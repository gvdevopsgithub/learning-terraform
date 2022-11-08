
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl

   versioning {
    enabled = var.versioning
  }

  tags = var.tags
}


//resource "aws_instance" "web" {
//  provisioner "local-exec" {
//    command = aws s3 cp main.tf s3://my-s3bucket-20221104134551399600000001/main/
//  }
//}