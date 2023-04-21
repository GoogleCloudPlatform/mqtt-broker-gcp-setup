# Automated deployment of EMQX MQTT broker on GKE
This folder contains sample terraform code to automatically deploy
* [EMQX Enterprise broker](https://docs.emqx.com/en/enterprise/v4.4/)

or

* [EMQX open-source MQTT broker](https://github.com/emqx/emqx)

on Google Kubernetes Engine(GKE).

## Prerequisites
* You must own the domain name which you use for the broker endpoints. The domain name must be no longer than 63 characters. You can use [Google Domains](https://domains.google.com/) or another registrar to acquire a custom domain.
* You have the necessary access rights to reconfigure your domain's DNS records.
* You have a Google Cloud project with billing enabled.

## Environment setup
1. Clone the source code repository:

    ```bash
    cd "$HOME"
    git clone https://github.com/GoogleCloudPlatform/mqtt-broker-gcp-setup.git
    ```

1. Export environment variables:

    ```bash
    export PROJECT_ID="[your cloud project id]"
    export REGION="[the desired region for GKE cluster]"
    export DOMAIN="[domain name]"
    export IAP_SUPPORT_EMAIL="[OAUTH consent screen display email]"
    export EMQX_BROKER_TYPE="[oss] for open source version or [ee] for enterprise version"
    ```
    **Note:** the `IAP_SUPPORT_EMAIL` is the email address you want to display as a public contact on OAuth consent screen. For detailed description from the [product doc](https://cloud.google.com/iap/docs/enabling-kubernetes-howto#oauth-configure).

1. Run the following script to create terraform service account and generate the terraform variable files based on the environment variables created in previous step. To run the script you use an account to authenticate against Google Cloud  which have following permissions in your Google Cloud project:
    * `roles/iam.serviceAccountCreator` for creating service account used by terraform.

    ```bash
    cd $HOME/mqtt-broker-gcp-setup/
    scripts/pre-tf-setup.sh
    ```

## Provision Google Kubernetes Engine cluster
Provison and deploy a private GKE cluster by execute following script:

```bash
cd $HOME/mqtt-broker-gcp-setup/
scripts/provision-infrastructure.sh
```

## MQTT broker configuration
To configure and customize the broker you update the `spec` definition under the `emqx` resource in the [emqx-oss/main.tf](../modules/emqx-oss/main.tf) or [emqx-ee/main.tf](../modules/emqx-ee/main.tf).
Here are the sample specification files for [emqx-oss](https://github.com/emqx/emqx-operator/blob/main/config/samples/emqx/v2alpha1/emqx-full.yaml) and [emqx-ee](https://github.com/emqx/emqx-operator/blob/main/config/samples/emqx/v1beta3/emqxenterprise-full.yaml) which specifies the configuration format and available configuration parameters.

## Provisioning and deployment of EMQX MQTT broker
Run the deployment steps from by execute following script:

1. Create emqx-operator:

    ```bash
    cd $HOME/mqtt-broker-gcp-setup/
    scripts/provision-broker.sh
    ```

    The terraform ends the deployment with the output similar to the following:

    ```bash
    admin-ui-dns = "emqx.your.domain -> xx.xxx.xxx.xxx"
    mqtt-dns = "mqtt.your.domain -> xx.xxx.xxx.xx"
    ```

    Configure your domain’s DNS records according to the the previous output, with DNS record type A where the values are set for `Domain Name` and `IP Address`.

