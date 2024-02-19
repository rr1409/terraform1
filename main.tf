provider "aws" {

  region = "ap-south-1"
}

provider "aws" {
  alias  = "nv"
  region = "us-east-1"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

