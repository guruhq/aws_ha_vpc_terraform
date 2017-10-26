/* 
  Public Route
*/

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.main.id}"
  }
  
  tags {
    Name = "Public Route"
  }
}

/* 
  Private Routes 
*/

resource "aws_route_table" "private_a" {
  vpc_id = "${aws_vpc.main.id}"
  
  route {  
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.private_gw_a.id}"
  }

  tags {  
    Name = "Private Route AZ A"
  }
}

resource "aws_route_table" "private_b" {
  vpc_id = "${aws_vpc.main.id}"
  
  route {  
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.private_gw_b.id}"
  }

  tags {  
    Name = "Private Route AZ B"
  }
}

resource "aws_route_table" "private_c" {
  vpc_id = "${aws_vpc.main.id}"
 
  route {  
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.private_gw_c.id}"
  }
 
  tags {  
    Name = "Private Route AZ C"
  }
}
