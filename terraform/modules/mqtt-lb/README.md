# Expose and secure the device connectivity interface
You expose the broker's MQTT service publicly which enables external MQTT clients connect to the broker.
To securely expose the MQTT service you use an [external SSL proxy load balancer](https://cloud.google.com/load-balancing/docs/ssl) backed by a [network endpoint group (NEG)](https://cloud.google.com/load-balancing/docs/negs).


The following annotation is added to the MQTT service manifest by Terraform, which commands Google Kubernetes Engine to create a NEG for the service:

```yaml
"cloud.google.com/neg" = "{\"exposed_ports\": {\"${var.mqtt_service_port}\":{\"name\": \"${var.mqtt_tcp_neg_id}\"}}}"

```
Following resources are provisioned by Terraform:

* [google_compute_backend_service.mqtt_backend_service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_service)
* [google_compute_firewall.allow_health_check](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall)
* [google_compute_global_address.mqtt_service_address](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_address)
* [google_compute_global_forwarding_rule.mqtt_lb_forwarding_rule](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule)
* [google_compute_health_check.mqtt_health_check](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_health_check)
* [google_compute_target_ssl_proxy.mqtt_ssl_proxy](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_target_ssl_proxy)
