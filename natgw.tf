resource "aws_eip" "Nat_IP" {
}


resource "aws_nat_gateway" "my-nat-gw" {
    allocation_id = aws_eip.Nat_IP.id
    subnet_id     = aws_subnet.public1.id

    tags = {
    Name = "GW NAT"
    }

    depends_on = [aws_internet_gateway.my-gw]
}
