resource "aws_vpn_gateway" "aws-vpn-gw" {
  vpc_id          = aws_vpc.aws-vpc.id
  amazon_side_asn = var.aws_asn
}
