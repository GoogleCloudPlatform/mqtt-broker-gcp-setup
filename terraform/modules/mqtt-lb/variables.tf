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

variable "external_address_name" {
  description = "Name for the reserved global ip"
  type        = string
  default     = "mqtt-service-address"
}

variable "vpc_id" {
  description = "Cluster VPC id"
  type        = string
}

variable "service_listener_port" {
  description = "Port for MQTT service"
  type        = number
  default     = 1883
}

variable "network_endpoint_groups" {
  description = "Network endpoint group for the MQTT service"
  type        = list(any)
}

variable "mqtt_external_lb_port" {
  description = "MQTT load balancer port"
  type        = number
  default     = 8883
}

variable "server_certificate_name" {
  description = "Certificate name server certificate"
  type        = string
}
