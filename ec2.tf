data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.3*"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}



resource "aws_instance" "myinstance_mum" {

  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.ins_type
  count         = var.ins_count

  tags = {
    Name        = "Terraform Instance"
    Environment = "Prd"
    Region      = "Mumbai"
  }
}

resource "aws_instance" "myinstance_nv" {

  ami           = "ami-0e731c8a588258d0d"
  instance_type = var.ins_type
  count         = var.ins_count
  provider      = aws.nv
  tags = {
    Name        = "Terraform Instance_hyd"
    Environment = "Prod"
    Region      = "nv"
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = var.s3_name
  tags = {
    Name        = "bucket"
    Environment = "Prod"
  }

}

resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_range
  instance_tenancy = "default"

  tags = {
    Name   = "main"
    Region = "ap-south-1"
  }


}