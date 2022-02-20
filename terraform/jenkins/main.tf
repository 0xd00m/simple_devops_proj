provider "aws" {
    region = "us-east-1"
}

variable "name" {
  description = "Name of the instance"
}

resource "aws_instance" "devops_jenkins" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type = "t2.micro"
    key_name = "devops"
    tags = {
        Name = "${var.name}"
    }  
}