provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_instance" {
  ami           = "ami-0c614dee691cbbf37"
  instance_type = "t2.micro"
  key_name      = "My_NewKey"
  tags = {
    Name = "DevOps-Instance"
  }
}