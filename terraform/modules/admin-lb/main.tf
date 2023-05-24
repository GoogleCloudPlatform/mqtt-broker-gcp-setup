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

resource "google_compute_global_address" "admin-service-address" {
  name = var.external_address_name
}

resource "kubernetes_manifest" "admin-server-cert" {
  manifest = {
    apiVersion = "networking.gke.io/v1"
    kind       = "ManagedCertificate"
    metadata = {
      name      = var.admin_server_cert_id
      namespace = var.deployment_namespace
    }
    spec = {
      domains = ["${var.admin_domain_prefix}.${var.admin_domain}", "${var.mqtt_domain_prefix}.${var.admin_domain}"]
    }
  }
}

resource "null_resource" "wait_for_server_cert_creation" {
  provisioner "local-exec" {
    command = <<-EOT
    COUNTER=0
    MAX_TRIES=50
    while ! kubectl describe managedcertificate ${var.admin_server_cert_id} --namespace=${var.deployment_namespace} | grep -i "certificate name" && [ $COUNTER -lt $MAX_TRIES ]
    do
      sleep 15
      COUNTER=$((COUNTER + 1))
    done
    if [ $COUNTER -eq $MAX_TRIES ]; then
      echo "The managed server certificate was not created, terraform can not continue!"
      exit 1
    fi
    EOT
  }

  depends_on = [
    kubernetes_manifest.admin-server-cert
  ]
}

data "kubernetes_resource" "managed_certificate" {
  api_version = kubernetes_manifest.admin-server-cert.manifest.apiVersion
  kind        = kubernetes_manifest.admin-server-cert.manifest.kind
  metadata {
    name      = kubernetes_manifest.admin-server-cert.manifest.metadata.name
    namespace = kubernetes_manifest.admin-server-cert.manifest.metadata.namespace
  }

  depends_on = [null_resource.wait_for_server_cert_creation]
}

resource "kubernetes_ingress_v1" "admin-ingress" {
  metadata {
    name      = var.admin_ingress_name
    namespace = var.deployment_namespace
    annotations = {
      "kubernetes.io/ingress.global-static-ip-name" = google_compute_global_address.admin-service-address.name
      "networking.gke.io/managed-certificates"      = kubernetes_manifest.admin-server-cert.manifest.metadata.name
      "kubernetes.io/ingress.class"                 = "gce"
    }
  }
  spec {
    default_backend {
      service {
        name = var.admin_k8s_service_name
        port {
          number = var.admin_k8s_service_port
        }
      }
    }
  }
}
