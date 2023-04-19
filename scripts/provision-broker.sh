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
check_exec_dependency "gcloud"

ROOT_DIR=$(pwd)
INFRA_DIR="${ROOT_DIR}/terraform/infra-setup"

_BASTION_HOST_NAME="$(terraform -chdir="${INFRA_DIR}" output -raw bastion_hostname)"
_GKE_CLUSTER_NAME="$(terraform -chdir="${INFRA_DIR}" output -raw gke_cluster_name)"

_BROKER_TERRAFORM_DIR="${ROOT_DIR}/terraform/emqx"

TERRAFORM_VARIABLE_FILE_PATH="${_BROKER_TERRAFORM_DIR}/terraform.tfvars"
if ! grep -q "gke_cluster_name" "${TERRAFORM_VARIABLE_FILE_PATH}"; then
    echo "gke_cluster_name  = \"${_GKE_CLUSTER_NAME}\"" >> "${TERRAFORM_VARIABLE_FILE_PATH}"
fi

_BASTION_ZONE="${REGION}-b"

echo "Copying broker descriptors to the bastion host"
gcloud compute scp \
  --project "${PROJECT_ID}" \
  --recurse \
  --zone "${_BASTION_ZONE}" \
  "${_BROKER_TERRAFORM_DIR}/" "${_BASTION_HOST_NAME}":~/


echo "Copying terraform modules to the bastion host"
_TERRAFORM_MODULES_DIR="${ROOT_DIR}/terraform/modules"
gcloud compute scp \
  --project "${PROJECT_ID}" \
  --recurse \
  --zone "${_BASTION_ZONE}" \
  "${_TERRAFORM_MODULES_DIR}/" "${_BASTION_HOST_NAME}":~/

echo "Copying common script file to the bastion host"
_COMMON_SCRIPT_PATH="${ROOT_DIR}/scripts/common.sh"
gcloud compute scp \
  --project "${PROJECT_ID}" \
  --zone "${_BASTION_ZONE}" \
  "${_COMMON_SCRIPT_PATH}" "${_BASTION_HOST_NAME}":~/

gcloud compute ssh "${_BASTION_HOST_NAME}" \
  --project "${PROJECT_ID}" \
  --zone "${_BASTION_ZONE}" \
  --command="bash -s" <<EOF
USE_GKE_GCLOUD_AUTH_PLUGIN=True gcloud container clusters get-credentials ${_GKE_CLUSTER_NAME} --region ${REGION}
. common.sh
run_terraform "emqx"
EOF
