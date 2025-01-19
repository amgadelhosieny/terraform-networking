provider "aws" {
  region = "us-east-1"
}


output "VPC-ID" {
    value = aws_vpc.myvpc.id
}
