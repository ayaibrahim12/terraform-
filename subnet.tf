resource "aws_subnet" "subnets" {
  count      = length(var.subnetss-name-list)

  # subnet     = var.subnetss-name-list[count.index]
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.cidr-list[count.index]
  tags = {
    "name" = var.subnetss-name-list[count.index]
  }

}

