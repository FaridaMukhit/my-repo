terraform {
  backend "s3" {
    bucket         = "farida-terraform-februray"
    region         = "us-east-1"
    key            = "session-5/terraform.tfstate"
    dynamodb_table = "terraform-may2022-state-lock-table"
  }
}