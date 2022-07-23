resource "aws_instance" "web" {
  ami           = "ami-0f234acd4850f57e2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.SGID]

  tags = {
    Name = "terraform"
  }
}

variable "SGID" {}