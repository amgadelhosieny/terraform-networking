resource "aws_subnet" "public1" {
    vpc_id     = aws_vpc.myvpc.id
    cidr_block = var.public_subnet_1_cidr
    map_public_ip_on_launch = true

    tags = {
    Name = "public1"
    }
}

resource "aws_subnet" "public2" {
    vpc_id     = aws_vpc.myvpc.id
    cidr_block = var.public_subnet_2_cidr
    map_public_ip_on_launch = true

    tags = {
    Name = "public2"
    }
}

resource "aws_subnet" "private1" {
    vpc_id     = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_1_cidr

    tags = {
    Name = "private1"
    }
}

resource "aws_subnet" "private2" {
    vpc_id     = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_2_cidr

    tags = {
    Name = "private2"
    }
}
