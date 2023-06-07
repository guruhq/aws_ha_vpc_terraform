resource "aws_eip" "private_gw" {
  count = length(var.private_cidrs)
  vpc   = true
}

resource "aws_nat_gateway" "private_gw" {
  count         = length(var.private_cidrs)
  allocation_id = aws_eip.private_gw[count.index].id
  subnet_id     = aws_subnet.public[count.index].id
}
