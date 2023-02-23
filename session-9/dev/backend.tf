terraform {
  backend "s3" {
    bucket         = "farida-terraform-februray"
    region         = "us-east-1"
    key            = "session-9/dev/terraform.tfstate"
    dynamodb_table = "terraform-februry-state-lock"
  }
}