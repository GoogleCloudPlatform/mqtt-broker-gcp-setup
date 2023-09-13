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

resource "local_file" "emqx_manifest" {
  filename = "emqx-ee-manifest.yaml"
  content = templatefile("../modules/emqx-ee/emqx-manifest.tftpl", {
    emqx_api_version        = var.emqx_api_version
    deployment_name         = var.deployment_name
    deployment_namespace    = var.deployment_namespace
    emqx_version            = var.emqx_version
    iap_backend_config_name = var.iap_backend_config_name
    mqtt_service_port       = var.mqtt_service_port
    mqtt_tcp_neg_id         = var.mqtt_tcp_neg_id
  })
}

module "emqx" {
  source                  = "terraform-google-modules/gcloud/google//modules/kubectl-wrapper"
  version                 = "3.2.1"
  project_id              = var.project_id
  cluster_name            = var.cluster_name
  cluster_location        = var.cluster_location
  kubectl_create_command  = "kubectl apply -f ${local_file.emqx_manifest.filename}"
  kubectl_destroy_command = "kubectl delete -f ${local_file.emqx_manifest.filename}"
  module_depends_on       = var.module_depends_on
}

resource "null_resource" "wait_for_neg_creation" {
  provisioner "local-exec" {
    interpreter = ["/bin/sh", "-c"]
    command     = <<-EOT
    . ../common.sh
    wait_for_state kubectl "describe svcneg ${var.mqtt_tcp_neg_id}" 'network endpoint groups' 'Network Endpoint Group for the MQTT service was not created, please ensure that the network endpoint group with ID ${var.mqtt_tcp_neg_id} is present before proceeding with the deployment. You can check this in the Cloud Console.' 30 50
    EOT
  }

  depends_on = [
    module.emqx.wait
  ]
}

resource "local_file" "admin_service_manifest" {
  filename = "admin-service-manifest.yaml"
  content = templatefile("../modules/emqx-ee/admin-service-manifest.tftpl", {
    admin_service_name   = var.admin_service_name
    deployment_namespace = var.deployment_namespace
    admin_service_port   = var.admin_service_port
  })
}

module "emqx_ee_admin_service" {
  source                  = "terraform-google-modules/gcloud/google//modules/kubectl-wrapper"
  version                 = "3.2.1"
  project_id              = var.project_id
  cluster_name            = var.cluster_name
  cluster_location        = var.cluster_location
  kubectl_create_command  = "kubectl apply -f ${local_file.admin_service_manifest.filename}"
  kubectl_destroy_command = "kubectl delete -f ${local_file.admin_service_manifest.filename}"
}

data "kubernetes_resource" "tcp_neg" {
  api_version = "networking.gke.io/v1beta1"
  kind        = "ServiceNetworkEndpointGroup"
  metadata {
    name      = var.mqtt_tcp_neg_id
    namespace = var.deployment_namespace
  }
  depends_on = [
    null_resource.wait_for_neg_creation
  ]
}
