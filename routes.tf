resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Public Route"
  }
}

resource "aws_route" "public_igw" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
  depends_on             = [aws_route_table.public]
}

resource "aws_route_table" "private" {
  count  = length(var.private_cidrs)
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.private_route_names[count.index]
  }
}

resource "aws_route" "private_igw" {
  count                  = length(var.private_cidrs)
  route_table_id         = aws_route_table.private[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.private_gw[count.index].id
  depends_on             = [aws_route_table.private]
}
