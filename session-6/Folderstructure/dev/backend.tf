terraform {
  backend "s3" {
    bucket         = "farida-terraform-februray"
    region         = "us-east-1"
    key            = "session-6/folderstructure/dev/terraform.tfstate"
    dynamodb_table = "terraform-februry-state-lock"
  }
}