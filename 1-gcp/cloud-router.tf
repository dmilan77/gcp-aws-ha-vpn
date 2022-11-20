# Create Cloud Router
resource "google_compute_router" "vpn-router-ha" {
  depends_on = [google_compute_network.vpn-network-ha]
  name       = "vpn-cloud-router-ha"
  project    = var.gcp_project
  network    = google_compute_network.vpn-network-ha.name
  bgp {
    asn = var.gcp_router_asn
  }
}
