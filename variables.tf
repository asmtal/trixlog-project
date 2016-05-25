variable "aws_region" {
  description = "AWS region to launch servers."
  default = "us-east-1"
}

variable "public_key_path" {
  description = "public key path"
  default = "~/.ssh/lamp-aws.pub"
}

variable "private_key_path" {
  description = "private key path"
  default = "~/.ssh/lamp-aws"
}

variable "key_name" {
  description = "trixlog-project"
  default = "lamp-aws"
}

variable "aws_instance_type" {
  description = "default instance type"
  default = "t2.micro"
}

variable "aws_amis" {
  default = {
    us-east-1 = "ami-fce3c696"
  }
}
