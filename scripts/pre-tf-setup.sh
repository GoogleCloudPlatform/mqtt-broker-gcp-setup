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
check_exec_dependency "gcloud"
check_exec_dependency "envsubst"

# Check if the necessary variables are set
check_environment_variable "PROJECT_ID" "the Google Cloud project that Terraform will provision the resources in"
check_environment_variable "REGION" "the Google Cloud region that Terraform will provision the resources in"
check_environment_variable "DOMAIN" "the domain that point to MQTT broker interface"
check_environment_variable "IAP_SUPPORT_EMAIL" "the email for the OAUTH consent screen display"
check_environment_variable "EMQX_BROKER_TYPE" "the EMQX broker type; allowed values are [oss] for open source version or [ee] for enterprise version,"
check_environment_variable "GOOGLE_APPLICATION_CREDENTIALS" "the Google Cloud application credentials that Terraform will use"

echo "Setting the Google Cloud project to ${PROJECT_ID}"
gcloud config set project "${PROJECT_ID}"

echo "Creating the service account for Terraform"
TF_SERVICE_ACCOUNT_NAME=tf-service-account
if gcloud iam service-accounts describe "${TF_SERVICE_ACCOUNT_NAME}"@"${PROJECT_ID}".iam.gserviceaccount.com >/dev/null 2>&1; then
    echo "The ${TF_SERVICE_ACCOUNT_NAME} service account already exists."
else
    gcloud iam service-accounts create "${TF_SERVICE_ACCOUNT_NAME}" \
        --display-name "Terraform admin account"
fi

echo "Granting the service account permission to view the Admin Project"
gcloud projects add-iam-policy-binding "${PROJECT_ID}" \
    --member serviceAccount:"${TF_SERVICE_ACCOUNT_NAME}"@"${PROJECT_ID}".iam.gserviceaccount.com \
    --role roles/viewer

echo "Granting the service account permission to manage Cloud Storage"
gcloud projects add-iam-policy-binding "${PROJECT_ID}" \
    --member serviceAccount:"${TF_SERVICE_ACCOUNT_NAME}"@"${PROJECT_ID}".iam.gserviceaccount.com \
    --role roles/storage.admin

echo "Enable the Cloud Resource Manager API with"
gcloud services enable cloudresourcemanager.googleapis.com

TERRAFORM_RUN_DIR=terraform/infra-setup
create_terraform_variables_file "${TERRAFORM_RUN_DIR}"

unset TERRAFORM_RUN_DIR
