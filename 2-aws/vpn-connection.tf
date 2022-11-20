
resource "aws_vpn_connection" "aws-vpn-connection-1" {
  vpn_gateway_id      = aws_vpn_gateway.aws-vpn-gw.id
  customer_gateway_id = aws_customer_gateway.aws-cgw-1.id
  type                = "ipsec.1"
  static_routes_only  = false
  tags = {
    "Name" = "aws-vpn-connection-1"
  }
  # tunnel1_inside_cidr   = ""
  tunnel1_preshared_key = var.preshared_key
  # tunnel2_inside_cidr   = ""
  tunnel2_preshared_key = var.preshared_key
}
resource "aws_vpn_connection" "aws-vpn-connection-2" {
  vpn_gateway_id      = aws_vpn_gateway.aws-vpn-gw.id
  customer_gateway_id = aws_customer_gateway.aws-cgw-2.id
  type                = "ipsec.1"
  static_routes_only  = false
  tags = {
    "Name" = "aws-vpn-connection-2"
  }
  # tunnel1_inside_cidr   = ""
  tunnel1_preshared_key = var.preshared_key
  # tunnel2_inside_cidr   = ""
  tunnel2_preshared_key = var.preshared_key
}
