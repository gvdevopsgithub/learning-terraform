resource "aws_instance" "web" {
  ami           = "ami-0f234acd4850f57e2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "terraform"
  }
}

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = DevOps321
      host     = self.public_ip
    }

    inline = [
      "uname"
      ]
    }


resource "aws_security_group" "allow_ssh" {
      name        = "allow_ssh"
      description = "Allow TLS inbound traffic"
      vpc_id      = "vpc-0ac989353056ea1a4"

      ingress {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "TCP"
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
