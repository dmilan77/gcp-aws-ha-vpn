variable "aws_customer_vgw_1_tunnel1_ip" { type = string }
variable "aws_customer_vgw_1_tunnel2_ip" { type = string }
variable "aws_customer_vpn_2_tunnel1_ip" { type = string }
variable "aws_customer_vpn_2_tunnel2_ip" { type = string }


variable "gcp_region" {
  type        = string
  description = "GCP region"
}
# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}
