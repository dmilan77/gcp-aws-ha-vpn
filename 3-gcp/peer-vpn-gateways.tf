resource "google_compute_external_vpn_gateway" "external_gateway" {
  name            = "external-gateway-aws"
  redundancy_type = "FOUR_IPS_REDUNDANCY"
  description     = "An externally managed VPN gateway"
  interface {
    id         = 0
    ip_address = var.aws_customer_vgw_1_tunnel1_ip
  }
  interface {
    id         = 1
    ip_address = var.aws_customer_vgw_1_tunnel2_ip
  }
  interface {
    id         = 2
    ip_address = var.aws_customer_vpn_2_tunnel1_ip
  }
  interface {
    id         = 3
    ip_address = var.aws_customer_vpn_2_tunnel2_ip
  }
}
