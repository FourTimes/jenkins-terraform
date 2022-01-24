terraform {
  backend "s3" {
    bucket = "jenkins-aws-24"
    key    = "prod-terraform/terraform.tfstate"
    region = "us-east-1"
  }
}

