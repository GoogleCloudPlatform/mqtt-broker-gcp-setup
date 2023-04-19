# Access control on administrative interface
Exposing the administrative interface through an external LoadBalancer makes the MQTT broker accessiable by users who lack network connectivity to the broker's private network. But exposing the interface publicly also makes the broker more vulnerable for external attacks and exploits that increase the security risk in the system.

You use [Identity Aware Proxy (IAP)](https://cloud.google.com/iap) to further secure the administrative interface. IAP verifies user identity and use context before granting users access to the services it protects. IAP enables you to have a centralized user access management for the MQTT broker. IAP makes the administrative interface publicly available to legitimate users without the need of VPN.

To [enable IAP for GKE ingress](https://cloud.google.com/iap/docs/enabling-kubernetes-howto) following resources are provisioned by Terraform:

* [google_iap_brand.project_brand](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iap_brand)
* [google_iap_client.project_client](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iap_client)
* [kubernetes_manifest.iap-backend-config](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest)
* [kubernetes_secret.iap-credential](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret)

Configure the terraform variable `iap_support_email` to the email address that belongs to the google cloud project and to be displayed in the OAUTH consent screen.

To turn on IAP for the administrative interface following annotation is added to the service manifest by Terraform:

```yaml
cloud.google.com/backend-config: '{"default": "config-default"}'
```

In this setup IAP uses default Google identities and IAM to authenticate users. You can also configure IAP to use external identity provider, which is described in detail in the [External Identities guide](https://cloud.google.com/iap/docs/external-identities).
