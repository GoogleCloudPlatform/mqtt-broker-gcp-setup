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
  default     = "admin-service-address"
}

variable "admin_domain" {
  description = "The custom domain for the broker"
  type        = string
}

variable "admin_server_cert_id" {
  description = "Certificate Id for admin server"
  type        = string
  default     = "admin-server-cert"
}

variable "admin_ingress_name" {
  description = "Name for the admin ingress object"
  type        = string
  default     = "admin-ingress"
}

variable "admin_k8s_service_name" {
  description = "Admin service name in the kubernetes cluster"
  type        = string
}

variable "admin_k8s_service_port" {
  description = "Admin service port in the kubernetes cluster"
  type        = number
}

variable "admin_domain_prefix" {
  description = "Domain prefix used for the admin interface url"
  type        = string
  default     = "admin"
}

variable "mqtt_domain_prefix" {
  description = "Domain prefix used for the MQTT client interface url"
  type        = string
  default     = "mqtt"
}

variable "deployment_namespace" {
  description = "Namespace under where services are deployed"
  type        = string
  default     = "default"
}
