output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "private_route_a_id" {
  value = "${aws_route_table.private_a.id}"
}

output "private_route_b_id" {
  value = "${aws_route_table.private_b.id}"
}

output "private_route_c_id" {
  value = "${aws_route_table.private_c.id}"
}

output "public_route_id" {
  value = "${aws_route_table.public.id}"
}
