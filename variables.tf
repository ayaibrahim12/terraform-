variable "ami-id" {
  type = string
  # default = "ami-0b5eea76982371e91"

}

variable "instance-type" {
  description = "inst"

  #  default = "t2.micro"

}

variable "cidrvpc-id" {
  default = "10.0.0.0/16"

}
variable "cidr-list" {
  type = list

}

variable "aws-region" {
  default = "us-east-1"

}
variable "vpc-name" {

  description = "aya"
}

variable "subnetss-name-list" {
  type = list

}