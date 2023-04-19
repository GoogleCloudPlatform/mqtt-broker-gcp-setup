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

variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "cluster_name" {
  type        = string
  description = "The name of the GKE cluster to deploy the EMQX broker on"
}

variable "cluster_location" {
  type        = string
  description = "The GKE cluster region"
}

variable "emqx_api_version" {
  description = "emqx api version"
  type        = string
  default     = "apps.emqx.io/v1beta3"
}

variable "deployment_name" {
  description = "EMQX deployment name"
  type        = string
  default     = "emqx-ee"
}

variable "deployment_namespace" {
  description = "Namespace under where EMQX is deployed"
  type        = string
  default     = "default"
}

variable "emqx_version" {
  description = "EMQX release version"
  type        = string
  default     = "emqx/emqx-ee:4.4.9"
}

variable "mqtt_service_port" {
  description = "MQTT service port"
  type        = number
  default     = 1883
}

variable "mqtt_tcp_neg_id" {
  description = "TCP NEG id for MQTT"
  type        = string
  default     = "mqtt-tcp-neg"
}

variable "iap_backend_config_name" {
  description = "Name of the IAP backendconfig"
  type        = string
  default     = "config-default"
}

variable "admin_service_name" {
  description = "Admin service name"
  type        = string
  default     = "admin-ui-service"
}

variable "admin_service_port" {
  description = "Admin service port"
  type        = number
  default     = 18083
}

variable "module_depends_on" {
  type        = list(any)
  description = "dependent resources"
}
