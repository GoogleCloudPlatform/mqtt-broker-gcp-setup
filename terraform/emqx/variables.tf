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
  type        = string
  description = "The Google Cloud project ID"
}

variable "region" {
  type        = string
  description = "The Google Cloud region"
}

variable "gke_cluster_name" {
  type        = string
  description = "The name of the GKE cluster to deploy the EMQX broker on"
}

variable "emqx_broker_type" {
  type        = string
  description = "EMQX broker type. Possible values: ee or oss"

  validation {
    condition     = var.emqx_broker_type == "ee" || var.emqx_broker_type == "oss"
    error_message = "Allowed values for emqx_broker_type are \"ee\", or \"oss\"."
  }
}

variable "iap_support_email" {
  type        = string
  description = "OAUTH consent screen display email"
}

variable "emqx_domain" {
  type        = string
  description = "custom domain you own that point to EMQX broker interface"
}