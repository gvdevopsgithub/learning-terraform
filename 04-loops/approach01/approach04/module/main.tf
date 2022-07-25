resource "aws_instance" "web" {
  count = var.instance_count
  ami           = "ami-0f234acd4850f57e2"
  instance_type = var.instance_type

  tags = {
    name = "terraform"
  }
}

variable "instance_type" {}
variable "instance_count" {}

