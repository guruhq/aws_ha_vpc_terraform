data "aws_region" "current" {}

/*
  Public Subnets
*/

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_a_cidr
  availability_zone = "${data.aws_region.current.name}a"
  tags = merge(var.public_subnet_tags, {
    Name = "${var.vpc_name}-public-a"
    Tier = "Public"
  })
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_b_cidr
  availability_zone = "${data.aws_region.current.name}b"
  tags = merge(var.public_subnet_tags, {
    Name = "${var.vpc_name}-public-b"
    Tier = "Public"
  })
}

resource "aws_subnet" "public_c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_c_cidr
  availability_zone = "${data.aws_region.current.name}c"
  tags = merge(var.public_subnet_tags, {
    Name = "${var.vpc_name}-public-c"
    Tier = "Public"
  })
}

/*
  Private Subnets
*/

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_a_cidr
  availability_zone = "${data.aws_region.current.name}a"
  tags = merge(var.private_subnet_tags, {
    Name = "${var.vpc_name}-private-a"
    Tier = "Private"
  })
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_b_cidr
  availability_zone = "${data.aws_region.current.name}b"
  tags = merge(var.private_subnet_tags, {
    Name = "${var.vpc_name}-private-b"
    Tier = "Private"
  })
}

resource "aws_subnet" "private_c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_c_cidr
  availability_zone = "${data.aws_region.current.name}c"
  tags = merge(var.private_subnet_tags, {
    Name = "${var.vpc_name}-private-c"
    Tier = "Private"
  })
}
