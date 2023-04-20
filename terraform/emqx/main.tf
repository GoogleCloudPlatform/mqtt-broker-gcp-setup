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

resource "local_file" "tf_backend_config" {
  file_permission = "0644"
  filename        = "backend.tf"
  content = templatefile("../templates/backend.tftpl", {
    bucket = var.tf_state_bucket
    prefix = "broker/terraform/state"
  })
}

data "google_client_config" "provider" {}

data "google_container_cluster" "my_cluster" {
  name     = var.gke_cluster_name
  location = var.region
}

locals {
  deployment_prefix   = "emqx"
  emqx_server_cert_id = "${local.deployment_prefix}-server-cert"
  network_name        = "${local.deployment_prefix}-network"
  kubernetes_host     = "https://${data.google_container_cluster.my_cluster.endpoint}"
  kubernetes_cluster_ca_certificate = base64decode(
    data.google_container_cluster.my_cluster.master_auth[0].cluster_ca_certificate,
  )
}

provider "kubernetes" {
  host                   = local.kubernetes_host
  token                  = data.google_client_config.provider.access_token
  cluster_ca_certificate = local.kubernetes_cluster_ca_certificate
}

provider "helm" {
  kubernetes {
    host                   = local.kubernetes_host
    token                  = data.google_client_config.provider.access_token
    cluster_ca_certificate = local.kubernetes_cluster_ca_certificate
  }
}

module "emqx_operator" {
  source = "../modules/emqx-operator"
}

module "emqx_broker_ee" {
  count            = var.emqx_broker_type == "ee" ? 1 : 0
  source           = "../modules/emqx-ee"
  project_id       = var.project_id
  cluster_name     = var.gke_cluster_name
  cluster_location = var.region
  module_depends_on = [
    module.emqx_operator.operator_status
  ]
}

module "emqx_broker_oss" {
  count            = var.emqx_broker_type == "oss" ? 1 : 0
  source           = "../modules/emqx-oss"
  project_id       = var.project_id
  cluster_name     = var.gke_cluster_name
  cluster_location = var.region
  module_depends_on = [
    module.emqx_operator.operator_status
  ]
}

# IAP resources
module "iap" {
  source            = "../modules/iap"
  iap_support_email = var.iap_support_email
}

module "admin_load_balancer" {
  source                 = "../modules/admin-lb"
  external_address_name  = "emqx-admin-ui"
  admin_ingress_name     = "emqx-admin-ui-ingress"
  admin_domain           = var.emqx_domain
  admin_server_cert_id   = local.emqx_server_cert_id
  admin_k8s_service_name = var.emqx_broker_type == "oss" ? module.emqx_broker_oss[0].admin_service_name : module.emqx_broker_ee[0].admin_service_name
  admin_k8s_service_port = var.emqx_broker_type == "oss" ? module.emqx_broker_oss[0].admin_service_port : module.emqx_broker_ee[0].admin_service_port
  admin_domain_prefix    = "emqx"
  mqtt_domain_prefix     = "mqtt"
}

module "mqtt_load_balancer" {
  source                  = "../modules/mqtt-lb"
  vpc_id                  = local.network_name
  server_certificate_name = module.admin_load_balancer.server_certificate_name
  network_endpoint_groups = var.emqx_broker_type == "oss" ? module.emqx_broker_oss[0].network_endpoint_groups : module.emqx_broker_ee[0].network_endpoint_groups
}
