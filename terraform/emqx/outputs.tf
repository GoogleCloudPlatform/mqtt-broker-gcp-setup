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

output "admin_dns" {
  description = "The DNS record for EMQX dashboard to configure on your domain DNS"
  value       = "${module.admin_load_balancer.admin_domain_url} -> ${module.admin_load_balancer.service_ip}"
}

output "mqtt_dns" {
  description = "The DNS record for MQTT interface to configure on your domain DNS"
  value       = "${module.admin_load_balancer.mqtt_domain_url} -> ${module.mqtt_load_balancer.service_ip}"
}
