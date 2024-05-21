terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}




#ami-0bb84b8ffd87024d8