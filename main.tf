terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "S1" {
  ami           = "ami-0e001c9271cf7f3b9"
  instance_type = "t2.micro"
}

resource "aws_security_group" "terraform_sg" {
  name        = "security group using terraform"
  description = "security group using terraform"
  vpc_id      = "vpc-0491bafa28c55262c"
}
