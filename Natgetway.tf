
resource "aws_eip" "nat_ip" {
  vpc = true
}

resource "aws_nat_gateway" "mynat" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.subnets[0].id
}
