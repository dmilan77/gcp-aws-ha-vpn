
variable "preshared_key" {
  description = "VPN shared key between aws gcp"
}
variable "aws_region" {
  description = "Default to Northern California region."
}

variable "aws_network_cidr" {
  description = "VPC network ip block."
}

variable "aws_subnet1_cidr" {
  description = "Subset block from VPC network ip block."
}

variable "aws_asn" {
  description = "AWS ASN from virtual private gateway."
}

variable "gcp_asn" {
  description = "GCP ASN from cloud router."
}
variable "gcp_vpn_gateway_ip_1" {
  description = "gcp vpn gateway interface ip"
}
variable "gcp_vpn_gateway_ip_2" {
  description = "gcp vpn gateway interface ip"
}

