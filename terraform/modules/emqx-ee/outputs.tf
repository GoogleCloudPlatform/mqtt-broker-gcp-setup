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

output "admin_service_name" {
  description = "Admin service name"
  value       = var.admin_service_name
}

output "admin_service_port" {
  description = "Admin service port"
  value       = var.admin_service_port
}

output "network_endpoint_groups" {
  description = "TCP NEG for MQTT"
  value       = data.kubernetes_resource.tcp_neg.object.status.networkEndpointGroups
}
