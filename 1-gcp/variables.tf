# define GCP region
variable "gcp_region" {
  type        = string
  description = "GCP region"
}
# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}

variable "gcp_subnet_cidr" {
  type        = string
  description = "VPN Network Subnet 1"
}

variable "gcp_router_asn" {
  description = "ASN for local side of BGP sessions"
  type        = string
}
