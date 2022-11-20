# Create the Network for the VPN Project
resource "google_compute_network" "vpn-network-ha" {
  name                    = "vpn-network-ha"
  project                 = var.gcp_project
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = "false"
}
# Create a Subnet 
resource "google_compute_subnetwork" "vpn-network-subnet-ha" {
  depends_on = [google_compute_network.vpn-network-ha]

  name          = "vpn-subnet-ha"
  project       = var.gcp_project
  ip_cidr_range = var.gcp_subnet_cidr
  region        = var.gcp_region
  network       = google_compute_network.vpn-network-ha.name
}
