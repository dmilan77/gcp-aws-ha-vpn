resource "aws_customer_gateway" "aws-cgw-1" {
  bgp_asn    = var.gcp_asn
  ip_address = var.gcp_vpn_gateway_ip_1
  type       = "ipsec.1"
  tags = {
    "Name" = "aws-customer-gw-1"
  }
}
resource "aws_customer_gateway" "aws-cgw-2" {
  bgp_asn    = var.gcp_asn
  ip_address = var.gcp_vpn_gateway_ip_2
  type       = "ipsec.1"
  tags = {
    "Name" = "aws-customer-gw-2"
  }
}
