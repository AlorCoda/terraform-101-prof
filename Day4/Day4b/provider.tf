terraform {
  backend "s3" {
    bucket = "benji-tf-state-bucket-19th"
    key = "devops/infrastructure/s3.tfstate"
    region = "us-west-2"
    use_lockfile = false #it should be true
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.9.0"
    }
  }
}