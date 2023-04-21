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

resource "google_compute_global_address" "mqtt_service_address" {
  name = var.external_address_name
}

resource "google_compute_firewall" "allow_health_check" {
  name          = "mqtt-allow-health-check"
  direction     = "INGRESS"
  network       = var.vpc_id
  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
  allow {
    protocol = "tcp"
    ports    = [var.service_listener_port]
  }
}

resource "google_compute_health_check" "mqtt_health_check" {
  name               = "mqtt-health-check"
  timeout_sec        = 5
  check_interval_sec = 5
  tcp_health_check {
    port = var.service_listener_port
  }
}

resource "google_compute_backend_service" "mqtt_backend_service" {
  name                  = "mqtt-backend-service"
  protocol              = "TCP"
  port_name             = "tcp"
  load_balancing_scheme = "EXTERNAL"
  timeout_sec           = 30
  health_checks         = [google_compute_health_check.mqtt_health_check.id]
  dynamic "backend" {
    for_each = var.network_endpoint_groups
    content {
      group                        = backend.value.selfLink
      balancing_mode               = "CONNECTION"
      max_connections_per_endpoint = 1000
      capacity_scaler              = 1.0
    }
  }
}

resource "google_compute_target_ssl_proxy" "mqtt_ssl_proxy" {
  name             = "mqtt-ssl-proxy"
  backend_service  = google_compute_backend_service.mqtt_backend_service.id
  ssl_certificates = [var.server_certificate_name]
}

resource "google_compute_global_forwarding_rule" "mqtt_lb_forwarding_rule" {
  name                  = "mqtt-lb-forwarding-rule"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  port_range            = var.mqtt_external_lb_port
  target                = google_compute_target_ssl_proxy.mqtt_ssl_proxy.id
  ip_address            = google_compute_global_address.mqtt_service_address.id
}
