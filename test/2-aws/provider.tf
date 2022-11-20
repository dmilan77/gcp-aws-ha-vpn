provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tf-state-dmilan"
    key    = "vpc/aws-vpn/step/1"
    region = "us-east-1"
  }
}
