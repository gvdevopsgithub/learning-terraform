resource "aws_instance" "web" {
  // count      = 0 (we can make some condition to come with a value based on that this resource can be created)
  ami           = "ami-0f234acd4850f57e2"
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {
  default = null
}