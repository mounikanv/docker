terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }

 backend "s3" {
    bucket         = "03-remote-state-341841617158"
    key            = "remote-state-demo"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"  # optional if using default credentials
}