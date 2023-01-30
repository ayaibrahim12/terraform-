resource "aws_instance" "web-pub" {
  ami                         = var.ami-id
  instance_type               = var.instance-type 
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  subnet_id                   = aws_subnet.subnets[0].id
  associate_public_ip_address = true
  user_data                   = file("userdata")
  key_name = "terr"

}


resource "aws_instance" "web-pri" {
  ami                         = var.ami-id
  instance_type               = var.instance-type 
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  subnet_id                   = aws_subnet.subnets[1].id
  associate_public_ip_address = false
  user_data                   = file("userdata")
   key_name = "terr"
}

