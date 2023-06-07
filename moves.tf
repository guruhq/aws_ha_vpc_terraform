moved {
  from = aws_eip.private_gw_a
  to   = aws_eip.private_gw[0]
}

moved {
  from = aws_eip.private_gw_b
  to   = aws_eip.private_gw[1]
}

moved {
  from = aws_eip.private_gw_c
  to   = aws_eip.private_gw[2]
}

moved {
  from = aws_nat_gateway.private_gw_a
  to   = aws_nat_gateway.private_gw[0]
}

moved {
  from = aws_nat_gateway.private_gw_b
  to   = aws_nat_gateway.private_gw[1]
}

moved {
  from = aws_nat_gateway.private_gw_c
  to   = aws_nat_gateway.private_gw[2]
}

moved {
  from = aws_route_table_association.public_a
  to   = aws_route_table_association.public[0]
}

moved {
  from = aws_route_table_association.public_b
  to   = aws_route_table_association.public[1]
}

moved {
  from = aws_route_table_association.public_c
  to   = aws_route_table_association.public[2]
}

moved {
  from = aws_route_table_association.private_a
  to   = aws_route_table_association.private[0]
}

moved {
  from = aws_route_table_association.private_b
  to   = aws_route_table_association.private[1]
}

moved {
  from = aws_route_table_association.private_c
  to   = aws_route_table_association.private[2]
}

moved {
  from = aws_route_table.private_a
  to   = aws_route_table.private[0]
}

moved {
  from = aws_route_table.private_b
  to   = aws_route_table.private[1]
}

moved {
  from = aws_route_table.private_c
  to   = aws_route_table.private[2]
}

moved {
  from = aws_route.private_igw_a
  to   = aws_route.private_igw[0]
}

moved {
  from = aws_route.private_igw_b
  to   = aws_route.private_igw[1]
}

moved {
  from = aws_route.private_igw_c
  to   = aws_route.private_igw[2]
}

moved {
  from = aws_subnet.public_a
  to   = aws_subnet.public[0]
}

moved {
  from = aws_subnet.public_b
  to   = aws_subnet.public[1]
}

moved {
  from = aws_subnet.public_c
  to   = aws_subnet.public[2]
}

moved {
  from = aws_subnet.private_a
  to   = aws_subnet.private[0]
}

moved {
  from = aws_subnet.private_b
  to   = aws_subnet.private[1]
}

moved {
  from = aws_subnet.private_c
  to   = aws_subnet.private[2]
}
