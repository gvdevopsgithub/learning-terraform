resource "aws_instance" "web" {
  count = var.instance_count
  ami           = "ami-00d7fca492f096d8c"
  instance_type = var.instance_type

  tags = {
    name = "terraform"
  }
}

variable "instance_type" {}
variable "instance_count" {}

