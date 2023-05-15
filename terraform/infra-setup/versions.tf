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

terraform {
  required_version = ">=1.2.4"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.62.1"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.65.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}
