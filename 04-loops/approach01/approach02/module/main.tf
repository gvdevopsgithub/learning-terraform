resource "aws_instance" "web" {
  ami           = "ami-0f234acd4850f57e2"
  instance_type = "t3.micro"

  tags = {
    Name = var.nametag
  }
}

variable "nametag" {}