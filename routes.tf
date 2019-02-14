/* 
  Public Route
*/

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.main.id}"
  
  tags {
    Name = "Public Route"
  }
}

resource "aws_route" "public_igw" {
  route_table_id            = "${aws_route_table.public.id}"
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id            = "${aws_internet_gateway.main.id}"
  depends_on                = ["aws_route_table.public"]
}

resource "aws_route" "vpn_gw_public" {
  route_table_id            = "${aws_route_table.public.id}"
  destination_cidr_block    = "${var.vpn_internal_cidr}"
  gateway_id                = "${aws_vpn_gateway.vpn_gw.id}"
  depends_on                = ["aws_route_table.public"]
}

/* 
  Private Routes 
*/

resource "aws_route_table" "private_a" {
  vpc_id = "${aws_vpc.main.id}"

  tags {  
    Name = "Private Route AZ A"
  }
}

resource "aws_route" "private_igw_a" {
  route_table_id            = "${aws_route_table.private_a.id}"
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            ="${aws_nat_gateway.private_gw_a.id}"
  depends_on                = ["aws_route_table.private_a"]
}

resource "aws_route" "vpn_gw_private_a" {
  route_table_id            = "${aws_route_table.private_a.id}"
  destination_cidr_block    = "${var.vpn_internal_cidr}"
  gateway_id                = "${aws_vpn_gateway.vpn_gw.id}"
  depends_on                = ["aws_route_table.private_a"]
}

resource "aws_route_table" "private_b" {
  vpc_id = "${aws_vpc.main.id}"

  tags {  
    Name = "Private Route AZ B"
  }
}

resource "aws_route" "private_igw_b" {
  route_table_id            = "${aws_route_table.private_b.id}"
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = "${aws_nat_gateway.private_gw_b.id}"
  depends_on                = ["aws_route_table.private_b"]
}

resource "aws_route" "vpn_gw_private_b" {
  route_table_id            = "${aws_route_table.private_b.id}"
  destination_cidr_block    = "${var.vpn_internal_cidr}"
  gateway_id                = "${aws_vpn_gateway.vpn_gw.id}"
  depends_on                = ["aws_route_table.private_b"]
}

resource "aws_route_table" "private_c" {
  vpc_id = "${aws_vpc.main.id}"

  tags {  
    Name = "Private Route AZ C"
  }
}

resource "aws_route" "private_igw_c" {
  route_table_id            = "${aws_route_table.private_c.id}"
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id            = "${aws_nat_gateway.private_gw_c.id}"
  depends_on                = ["aws_route_table.private_c"]
}

resource "aws_route" "vpn_gw_private_c" {
  route_table_id            = "${aws_route_table.private_c.id}"
  destination_cidr_block    = "${var.vpn_internal_cidr}"
  gateway_id                = "${aws_vpn_gateway.vpn_gw.id}"
  depends_on                = ["aws_route_table.private_c"]
}
