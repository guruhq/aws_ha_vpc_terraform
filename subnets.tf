data "aws_region" "current" {}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "public" {
  count             = length(var.public_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = merge(var.public_subnet_tags, {
    Name = "${var.vpc_name}-${var.public_subnet_names[count.index]}"
    Tier = "Public"
  })
}

resource "aws_subnet" "private" {
  count             = length(var.private_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_cidrs[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = merge(var.private_subnet_tags, {
    Name = "${var.vpc_name}-${var.private_subnet_names[count.index]}"
    Tier = "Private"
  })
}
