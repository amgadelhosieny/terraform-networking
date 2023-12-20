resource "aws_route_table" "public-route" {
  vpc_id = aws_vpc.myvpc.id

}


resource "aws_route" "public-route" {
  route_table_id            = aws_route_table.public-route.id
  destination_cidr_block    = "0.0.0.0/0"  
  gateway_id = aws_internet_gateway.mygw.id
}

resource "aws_route_table_association" "public-one" {
  subnet_id      = aws_subnet.public-one.id
  route_table_id = aws_route_table.public-route.id
}

resource "aws_route_table_association" "public-two" {
  subnet_id      = aws_subnet.public-two.id
  route_table_id = aws_route_table.public-route.id
}




resource "aws_route_table" "private" {
  vpc_id = aws_vpc.myvpc.id

}


resource "aws_route" "private_route" {
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.my_nat.id
}



resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private.id
}


resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private.id
}
