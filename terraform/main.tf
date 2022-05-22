terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.15"
    }
  }
  backend "s3" {
    bucket = "terraformtest990"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }

  required_version = ">=0.14.9"

}

provider "aws" {

  region = "us-west-2"

}

#resource "aws_vpc" "example" {
#  cidr_block = "10.0.0.0/16"
#
#  tags = {
#    Name = "testeterraform2"
#  }
#}

