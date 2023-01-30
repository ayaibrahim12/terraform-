output "ec2pub-ip" {
  value = aws_instance.web-pub.public_ip

}
output "ec2pri-ip" {
  value = aws_instance.web-pri.private_ip

}