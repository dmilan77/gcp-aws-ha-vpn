# Define Terraform provider
terraform {
  required_version = ">= 0.13"
}

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region

}

terraform {
  backend "gcs" {
    bucket = "data-protection-02-tfstate-01"
    prefix = "terraform/state/gcp-aws-ha-vpn-step3-01"
  }
}
# provider "google-beta" {
#   project = var.gcp_project
#   region  = var.gcp_region
# }
