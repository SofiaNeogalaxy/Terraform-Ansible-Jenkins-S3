resource "aws_vpc" "main_vpc" {
    cidr_block = var.vpc_cidr
    instance_tenancy = var.tenancy

    tags = {
        Name = "Main-VPC-${terraform.workspace}"
    }
}

resource "aws_subnet" "public_subnet" {
    cidr_block = var.subnet_cidr
    vpc_id = aws_vpc.main_vpc.id
}