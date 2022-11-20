output "aws_asn" {
  value = aws_vpn_gateway.aws-vpn-gw.amazon_side_asn
}


# output "aws_vpn_connection_1" {
#   sensitive = true
#   value     = aws_vpn_connection.aws-vpn-connection-1
# }

# output "aws_customer_gateway_1_ip" {
#   value = aws_customer_gateway.aws-cgw-1.ip_address
# }

output "aws_customer_vgw_1_tunnel1_inside_cidr" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel1_inside_cidr
}
output "aws_customer_vgw_1_tunnel2_inside_cidr" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel2_inside_cidr
}

output "aws_customer_vgw_2_tunnel1_inside_cidr" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel1_inside_cidr
}
output "aws_customer_vgw_2_tunnel2_inside_cidr" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel2_inside_cidr
}

output "aws_customer_vgw_1_tunnel1_ip" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel1_address
}
output "aws_customer_vgw_1_tunnel2_ip" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel2_address
}


# output "aws_customer_gateway_2_ip" {
#   value = aws_customer_gateway.aws-cgw-2.ip_address
# }
output "aws_customer_vgw_2_tunnel1_ip" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel1_address
}
output "aws_customer_vgw_2_tunnel2_ip" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel2_address
}
## Inside address

output "aws_vgw1_tunnel1_inside_address" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel1_vgw_inside_address
}
output "aws_vgw1_tunnel2_inside_address" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel2_vgw_inside_address
}
output "aws_cgw1_tunnel1_inside_address" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel1_cgw_inside_address
}
output "aws_cgw1_tunnel2_inside_address" {
  value = aws_vpn_connection.aws-vpn-connection-1.tunnel2_cgw_inside_address
}

output "aws_vgw2_tunnel1_inside_address" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel1_vgw_inside_address
}
output "aws_vgw2_tunnel2_inside_address" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel2_vgw_inside_address
}
output "aws_cgw2_tunnel1_inside_address" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel1_cgw_inside_address
}
output "aws_cgw2_tunnel2_inside_address" {
  value = aws_vpn_connection.aws-vpn-connection-2.tunnel2_cgw_inside_address
}

