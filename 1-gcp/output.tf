output "gcp_vpn_gateway_ip_1" {
  value = google_compute_ha_vpn_gateway.vpn-gateway-ha.vpn_interfaces[0].ip_address
}
output "gcp_vpn_gateway_ip_2" {
  value = google_compute_ha_vpn_gateway.vpn-gateway-ha.vpn_interfaces[1].ip_address
}

output "gcp_asn" {
  value = google_compute_router.vpn-router-ha.bgp[0].asn
}
