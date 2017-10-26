resource "aws_eip" "private_gw_a" {
  vpc = true
}

resource "aws_eip" "private_gw_b" {
  vpc = true
}

resource "aws_eip" "private_gw_c" {
  vpc = true
}

resource "aws_nat_gateway" "private_gw_a" {
  allocation_id = "${aws_eip.private_gw_a.id}"
  subnet_id     = "${aws_subnet.private_a.id}"
}

resource "aws_nat_gateway" "private_gw_b" {
  allocation_id = "${aws_eip.private_gw_b.id}"
  subnet_id     = "${aws_subnet.private_b.id}"
}

resource "aws_nat_gateway" "private_gw_c" {
  allocation_id = "${aws_eip.private_gw_c.id}"
  subnet_id     = "${aws_subnet.private_c.id}"
}
