resource "aws_vpc" "myvpc" {

cidr_block = var.cidr_block

tags = {

name = var.vpc_name

}

}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "192.168.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
}


