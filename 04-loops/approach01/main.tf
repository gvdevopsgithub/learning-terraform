variable "instance_types" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-0f234acd4850f57e2"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }
}

#
#tags = {
#  Name = "terraform-${count.index + 1}"
#}
#}
#
#output "public_ip_address" {
#value = aws_instance.web.*.public_ip
#}