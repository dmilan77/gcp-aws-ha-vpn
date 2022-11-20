resource "google_compute_vpn_tunnel" "tunnel1" {
  count                           = 4
  name                            = format("ha-vpn-tunnel-%s", count.index)
  ike_version                     = 1
  region                          = var.gcp_region
  vpn_gateway                     = var.gcp_vpn_gateway_id
  peer_external_gateway           = google_compute_external_vpn_gateway.external_gateway.id
  peer_external_gateway_interface = count.index
  shared_secret                   = var.preshared_key
  router                          = var.gcp_cloud_router_id
  vpn_gateway_interface           = count.index
}
