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

resource "google_iap_brand" "project_brand" {
  support_email     = var.iap_support_email
  application_title = "EMQX Admin"
}

resource "google_iap_client" "project_client" {
  display_name = "IAP Client"
  brand        = google_iap_brand.project_brand.name
}

resource "kubernetes_secret" "iap-credential" {
  metadata {
    name = "my-secret"
  }

  data = {
    client_id     = google_iap_client.project_client.client_id
    client_secret = google_iap_client.project_client.secret
  }
}

resource "kubernetes_manifest" "iap-backend-config" {
  provider = kubernetes
  manifest = {
    apiVersion = "cloud.google.com/v1"
    kind       = "BackendConfig"
    metadata = {
      name      = var.backend_config_name
      namespace = "default"
    }
    spec = {
      iap = {
        enabled = "true"
        oauthclientCredentials = {
          secretName = kubernetes_secret.iap-credential.metadata[0].name
        }

      }
    }
  }
}
