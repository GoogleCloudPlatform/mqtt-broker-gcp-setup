#!/usr/bin/env sh

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

set -o errexit
set -o nounset

. scripts/common.sh

# Check if the necessary dependencies are available
check_exec_dependency "terraform"

run_terraform "terraform/infra-setup"

TERRAFORM_BACKEND_CONFIG_FILE="terraform/infra-setup/backend.tf"
if [ -f "${TERRAFORM_BACKEND_CONFIG_FILE}" ]; then
  echo "Re-run terraform to migrate the local state to the remote backend."
  run_terraform "terraform/infra-setup"
else
  echo "${TERRAFORM_BACKEND_CONFIG_FILE} was not generated."
fi
