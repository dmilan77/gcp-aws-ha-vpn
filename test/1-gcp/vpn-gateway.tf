# Create VPN Gateway
resource "google_compute_ha_vpn_gateway" "vpn-gateway-ha" {
  depends_on = [google_compute_network.vpn-network-ha]
  # provider   = google-beta
  region  = var.gcp_region
  name    = "vpn-gateway-ha"
  project = var.gcp_project
  network = google_compute_network.vpn-network-ha.name

}



