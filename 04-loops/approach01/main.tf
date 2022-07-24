variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-0f234acd4850f57e2"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-${count.index}"
  }
}