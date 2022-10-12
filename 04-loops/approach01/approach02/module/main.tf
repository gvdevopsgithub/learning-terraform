resource "aws_instance" "web" {
  ami           = "ami-00d7fca492f096d8c"
  instance_type = "t3.micro"

  tags = {
    Name = var.nametag
  }
}

variable "nametag" {}