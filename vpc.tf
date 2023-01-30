resource "aws_vpc" "myvpc" {
  cidr_block = var.cidrvpc-id
  tags = {
    Name = var.vpc-name
  }
}