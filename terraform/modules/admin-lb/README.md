# Expose and secure the administrative interface
The administrative interface are exposed as cluster internal network [services](https://kubernetes.io/docs/concepts/services-networking/service/). You use a service of type [LoadBalancer](https://kubernetes.io/docs/concepts/services-networking/service/#loadbalancer) to expose the service externally and make it available to users without access to the cluster internal network.

This module contains the Terraform descriptors for provisioning of a [HTTP(S) Load Balancing with Ingress](https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer) that uses [Google-managed SSL certificates](https://cloud.google.com/kubernetes-engine/docs/how-to/managed-certs).
