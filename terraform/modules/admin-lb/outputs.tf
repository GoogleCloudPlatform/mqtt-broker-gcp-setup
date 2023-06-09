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

output "service_ip" {
  description = "Admin service global ip address"
  value       = google_compute_global_address.admin-service-address.address
}

output "admin_domain_url" {
  value = "${var.admin_domain_prefix}.${var.admin_domain}"
}

output "mqtt_domain_url" {
  value = "${var.mqtt_domain_prefix}.${var.admin_domain}"
}

output "server_certificate_name" {
  value = data.kubernetes_resource.managed_certificate.object.status.certificateName
}
