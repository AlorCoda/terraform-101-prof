resource "aws_vpc" "attah" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${local.name_prefix}-vpc"
  }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.attah.id
  cidr_block = var.private_subnet_cidr
    tags = {
    Name = "${local.name_prefix}-private-subnet"
  }
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.attah.id 
  cidr_block = var.public_subnet_cidr
  tags = {
    Name = "${local.name_prefix}-public-subnet"
  }
}