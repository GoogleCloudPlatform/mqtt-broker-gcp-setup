# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

provider "google" {
  project = var.project_id
  region  = var.region
}

locals {
  tf_state_bucket_name                = "tf-state-bucket"
  deployment_prefix                   = "emqx"
  network_name                        = "${local.deployment_prefix}-network"
  subnet_name                         = "${local.deployment_prefix}-subnet"
  master_auth_subnetwork              = "${local.deployment_prefix}-master-subnet"
  bastion_zone                        = "${var.region}-b"
  master_authorized_network_ipv4_cidr = "10.60.0.0/17"
  master_ipv4_cidr_block              = "172.16.0.0/28"
  gke_cluster_name                    = "${local.deployment_prefix}-cluster"
  ip_range_pods                       = "${local.deployment_prefix}-pods-ip-range"
  ip_range_services                   = "${local.deployment_prefix}-services-ip-range"
  subnet_names                        = [for subnet_self_link in module.gcp_network.subnets_self_links : split("/", subnet_self_link)[length(split("/", subnet_self_link)) - 1]]
  gke_cluster_network_tag_file        = "cluster_node_network_tag.txt"
}

module "project_services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "14.2.0"

  disable_dependent_services  = true
  disable_services_on_destroy = false

  project_id = var.project_id

  activate_apis = [
    "compute.googleapis.com",
    "monitoring.googleapis.com",
    "logging.googleapis.com",
    "autoscaling.googleapis.com",
    "iap.googleapis.com",
    "beyondcorp.googleapis.com",
    "container.googleapis.com",
    "deploymentmanager.googleapis.com",
    "iam.googleapis.com",
    "iamcredentials.googleapis.com",
    "networkmanagement.googleapis.com",
    "storage.googleapis.com"
  ]
}

module "tf_state_bucket" {
  source           = "terraform-google-modules/cloud-storage/google"
  version          = "3.4.1"
  location         = var.region
  names            = [local.tf_state_bucket_name]
  prefix           = var.project_id
  project_id       = var.project_id
  randomize_suffix = true
  bucket_policy_only = {
    (local.tf_state_bucket_name) = true
  }
  force_destroy = {
    (local.tf_state_bucket_name) = true
  }
  versioning = {
    (local.tf_state_bucket_name) = false
  }
}

resource "local_file" "tf_backend_config" {
  file_permission = "0644"
  filename        = "backend.tf"
  content = templatefile("../templates/backend.tftpl", {
    bucket = module.tf_state_bucket.buckets[0].name
    prefix = "infra/terraform/state"
  })
}

module "gcp_network" {
  source  = "terraform-google-modules/network/google"
  version = "7.0.0"

  project_id   = var.project_id
  network_name = local.network_name

  subnets = [
    {
      subnet_name   = local.subnet_name
      subnet_ip     = "10.0.0.0/17"
      subnet_region = var.region
    },
    {
      subnet_name   = local.master_auth_subnetwork
      subnet_ip     = local.master_authorized_network_ipv4_cidr
      subnet_region = var.region
    },
  ]

  secondary_ranges = {
    (local.subnet_name) = [
      {
        range_name    = local.ip_range_pods
        ip_cidr_range = "192.168.0.0/18"
      },
      {
        range_name    = local.ip_range_services
        ip_cidr_range = "192.168.64.0/18"
      },
    ]
  }

  depends_on = [local_file.tf_backend_config]
}

resource "google_project_iam_custom_role" "iap_admin_role" {
  role_id     = "customIapAdmin"
  title       = "IAP Admin role"
  description = "Permissions needed for IAP administration"
  permissions = [
    "clientauthconfig.brands.list",
    "clientauthconfig.brands.create",
    "clientauthconfig.brands.get",
    "clientauthconfig.clients.create",
    "clientauthconfig.clients.listWithSecrets",
    "clientauthconfig.clients.getWithSecret",
    "clientauthconfig.clients.delete",
    "clientauthconfig.clients.update"
  ]

  depends_on = [local_file.tf_backend_config]
}

module "iap_bastion" {
  source  = "terraform-google-modules/bastion-host/google"
  version = "5.2.0"

  disk_type      = "pd-ssd"
  network        = module.gcp_network.network_name
  project        = var.project_id
  startup_script = file("files/init-scripts/bastion-vm-startup-script.sh")
  subnet         = module.gcp_network.subnets_self_links[index(module.gcp_network.subnets_names, local.master_auth_subnetwork)]
  zone           = local.bastion_zone

  service_account_roles_supplemental = [
    "roles/container.clusterViewer",
    "roles/container.developer",
    "roles/container.admin",
    "roles/compute.viewer",
    "roles/storage.admin",
    "roles/compute.networkAdmin",
    "roles/container.serviceAgent",
    "roles/iam.securityAdmin",
    "projects/${var.project_id}/roles/${google_project_iam_custom_role.iap_admin_role.role_id}"
  ]
}

module "cloud_router" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "5.0.1"

  name    = "master-authorized-network-router"
  network = module.gcp_network.network_name
  project = var.project_id
  region  = var.region

  nats = [{
    name                               = "master-authorized-network-nat"
    source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

    subnetworks = [
      {
        name                    = module.gcp_network.subnets_self_links[index(module.gcp_network.subnets_names, local.master_auth_subnetwork)]
        source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
      }
    ]
    },
    {
      name                               = "gke-node-network-nat"
      source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

      subnetworks = [
        {
          name                    = module.gcp_network.subnets_self_links[index(module.gcp_network.subnets_names, local.subnet_name)]
          source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
        }
      ]
  }]
}

module "gke" {
  source                          = "terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-private-cluster"
  version                         = "25.0.0"
  project_id                      = var.project_id
  name                            = local.gke_cluster_name
  regional                        = true
  region                          = var.region
  network                         = module.gcp_network.network_name
  subnetwork                      = local.subnet_names[index(module.gcp_network.subnets_names, local.subnet_name)]
  ip_range_pods                   = local.ip_range_pods
  ip_range_services               = local.ip_range_services
  release_channel                 = "REGULAR"
  datapath_provider               = "ADVANCED_DATAPATH"
  enable_vertical_pod_autoscaling = true
  master_ipv4_cidr_block          = local.master_ipv4_cidr_block

  deploy_using_private_endpoint = true
  enable_private_endpoint       = true
  enable_private_nodes          = true

  master_authorized_networks = [
    {
      cidr_block   = local.master_authorized_network_ipv4_cidr
      display_name = "VPC"
    },
  ]

  depends_on = [
    module.cloud_router
  ]
}

module "read_network_tag" {
  source  = "terraform-google-modules/gcloud/google"
  version = "~> 3.1"

  platform        = "linux"
  create_cmd_body = "compute firewall-rules list --filter 'name~^gke-${module.gke.name}.*master' --format 'value(targetTags[0])' > ${local.gke_cluster_network_tag_file}"
}

data "local_file" "cluster_node_network_tag" {
  filename = "./${local.gke_cluster_network_tag_file}"
  depends_on = [
    module.read_network_tag
  ]
}

resource "google_compute_firewall" "allow_master_webhook" {
  name    = "allow-master-webhook"
  network = local.network_name
  allow {
    protocol = "tcp"
    ports    = ["9443"]
  }

  source_ranges = [local.master_ipv4_cidr_block]
  target_tags   = [trimspace(data.local_file.cluster_node_network_tag.content)]
}

