terraform {
  backend "s3" {
    bucket         = "terraform-state-ifeanyi-2026"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
