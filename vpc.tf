resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr}"

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
