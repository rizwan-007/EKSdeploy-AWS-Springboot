terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.medium"

  tags = {
    Name = var.instance_name
  }
}
