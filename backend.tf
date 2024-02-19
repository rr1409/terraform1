terraform {
  backend "s3" {

    bucket = "terraform-mybucket-1409"
    key    = "terraform.tfstate"
    region = "ap-south-1"

  }
}