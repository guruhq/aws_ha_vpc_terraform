resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_dns_support   = "${var.enable_dns_support}"

  tags {
    Name = "${var.vpc_name}"
  }
}

resource "aws_vpn_gateway" "vpn_gw" {
  tags {
    Name = "${var.vpc_name}-vpn-gateway"
  }
}

resource "aws_vpn_gateway_attachment" "vpn_attachment" {
  vpc_id         = "${aws_vpc.main.id}"
  vpn_gateway_id = "${aws_vpn_gateway.vpn_gw.id}"
}
