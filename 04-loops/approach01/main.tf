variable "instance_types" {
  default = 2
}

resource "aws_instance" "web" {
  count         = "var.no-of-instances"
  ami           = "ami-00d7fca492f096d8c"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-${count.index}"
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