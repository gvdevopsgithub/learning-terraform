resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow TLS inbound traffic"
  vpc_id      = vpc-0ac989353056ea1a4

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}


resource "aws_instance" "web" {
  ami           = ami-00d7fca492f096d8c
  instance_type = "t2.micro"
  vpc_security_group_ids = "aws_security_group.allow_ssh.id"

  tags = {
    Name = "venkatesh"
  }
}
#
#terraform {
#  backend "s3" {
#    bucket = "terraform-b656 "
#    key    = "ex1/terraform.tfstate"
#    region = "us-east-1"
#  }
#}