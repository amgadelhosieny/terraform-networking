resource "aws_route_table" "my-route-table" {
    vpc_id = aws_vpc.myvpc.id

    tags = {
    Name = "my-route-table"
    }
}

resource "aws_route" "public-route" {
    route_table_id            = aws_route_table.my-route-table.id
    destination_cidr_block    = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-gw.id
}

resource "aws_route_table_association" "public1" {
    subnet_id      = aws_subnet.public1.id
    route_table_id = aws_route_table.my-route-table.id
}


resource "aws_route_table_association" "public2" {
    subnet_id      = aws_subnet.public2.id
    route_table_id = aws_route_table.my-route-table.id
}


######################## PRIVATE ROUTE #############################


resource "aws_route_table" "my-private-route-table" {
    vpc_id = aws_vpc.myvpc.id

    tags = {
    Name = "my-private-route-table"
    }
}

resource "aws_route" "private-route" {
    route_table_id            = aws_route_table.my-route-table.id
    destination_cidr_block    = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.my-nat-gw.id
}

resource "aws_route_table_association" "private1" {
    subnet_id      = aws_subnet.private1.id
    route_table_id = aws_route_table.my-private-route-table.id
}


resource "aws_route_table_association" "private2" {
    subnet_id      = aws_subnet.private2.id
    route_table_id = aws_route_table.my-private-route-table.id
}
