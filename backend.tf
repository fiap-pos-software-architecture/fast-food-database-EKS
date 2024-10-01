terraform {
  backend "s3" {
    bucket = "fast-food-terraform-bd"
    key    = "fast-food/terraform.tfstate"
    region = "us-east-1"
  }
}