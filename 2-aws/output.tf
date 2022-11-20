output "aws_asn" {
  value = aws_vpn_gateway.aws-vpn-gw.amazon_side_asn
}


output "aws_vpn_connection_1" {
  sensitive = true
  value     = aws_vpn_connection.aws-vpn-connection-1
}

# output "aws_customer_gateway_1_ip" {
#   value = aws_customer_gateway.aws-cgw-1.ip_address
# }
output "aws_customer_vgw_1_tunnel1_ip" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel1_address
}
output "aws_customer_vgw_1_tunnel2_ip" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel2_address
}

# output "aws_customer_gateway_2_ip" {
#   value = aws_customer_gateway.aws-cgw-2.ip_address
# }
output "aws_customer_vpn_2_tunnel1_ip" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel1_address
}
output "aws_customer_vpn_2_tunnel2_ip" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel2_address
}
