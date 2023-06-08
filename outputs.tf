output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_routes" {
  value = [for table in aws_route_table.private : table.id]
}

output "public_route_id" {
  value = aws_route_table.public.id
}
