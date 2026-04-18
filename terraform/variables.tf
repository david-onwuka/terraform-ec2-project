variable "region" {
 description = "AWS region"
 default = "us-east-1"
}

variable "instance_type" {
description = "EC2 instance type"
default = "t2.micro"
}

variable "ami" {
  description = "Amazon Linux AMI ID"
  default     = "ami-0c02fb55956c7d316"
}

