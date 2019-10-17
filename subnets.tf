/*
  Public Subnets
*/

resource "aws_subnet" "public_a" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.public_subnet_a_cidr}"
  availability_zone = "${var.region}a"
  tags = {
    Name = "${var.vpc_name}-public-a"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.public_subnet_b_cidr}"
  availability_zone = "${var.region}b"
  tags = {
    Name = "${var.vpc_name}-public-b"
  }
}

resource "aws_subnet" "public_c" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.public_subnet_c_cidr}"
  availability_zone = "${var.region}c"
  tags = {
    Name = "${var.vpc_name}-public-c"
  }
}

/*
  Private Subnets
*/

resource "aws_subnet" "private_a" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_subnet_a_cidr}"
  availability_zone = "${var.region}a"
  tags = {
    Name = "${var.vpc_name}-private-a"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_subnet_b_cidr}"
  availability_zone = "${var.region}b"
  tags = {
    Name = "${var.vpc_name}-private-b"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_subnet_c_cidr}"
  availability_zone = "${var.region}c"
  tags = {
    Name = "${var.vpc_name}-private-c"
  }
}
