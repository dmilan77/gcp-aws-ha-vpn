#common
variable "preshared_key" {}

#gcp
variable "gcp_project" {}
variable "gcp_region" {}
variable "gcp_router_asn" {}
variable "gcp_vpn_gateway_id" {}


#aws

variable "aws_asn" {}
variable "aws_cgw1_tunnel1_inside_address" {}
variable "aws_cgw1_tunnel2_inside_address" {}
variable "aws_cgw2_tunnel1_inside_address" {}
variable "aws_cgw2_tunnel2_inside_address" {}
variable "aws_customer_vgw_1_tunnel1_ip" {}
variable "aws_customer_vgw_1_tunnel2_ip" {}
variable "aws_customer_vpn_2_tunnel1_ip" {}
variable "aws_customer_vpn_2_tunnel2_ip" {}
variable "aws_vgw1_tunnel1_inside_address" {}
variable "aws_vgw1_tunnel2_inside_address" {}
variable "aws_vgw2_tunnel1_inside_address" {}
variable "aws_vgw2_tunnel2_inside_address" {}
variable "aws_customer_vgw_1_tunnel1_inside_cidr" {}
variable "aws_customer_vgw_1_tunnel2_inside_cidr" {}
variable "aws_customer_vgw_2_tunnel1_inside_cidr" {}
variable "aws_customer_vgw_2_tunnel2_inside_cidr" {}
