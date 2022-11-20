variable "aws_customer_vgw_1_tunnel1_ip" { type = string }
variable "aws_customer_vgw_1_tunnel2_ip" { type = string }
variable "aws_customer_vpn_2_tunnel1_ip" { type = string }
variable "aws_customer_vpn_2_tunnel2_ip" { type = string }

variable "preshared_key" {
  description = "VPN shared key between aws gcp"
}

variable "aws_asn" {
  type        = string
  description = "AWS ASN"
}
variable "gcp_region" {
  type        = string
  description = "GCP region"
}
# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}
variable "gcp_vpn_gateway_id" {
  type        = string
  description = "GCP vpn gateway id from step1 GCP"
}
variable "gcp_cloud_router_id" {
  type        = string
  description = "GCP vpn cloud router id from step1 GCP"
}
