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
  region  = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04d3ba818c434b384"
  instance_type = var.instance_type

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
