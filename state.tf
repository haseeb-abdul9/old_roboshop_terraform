terraform {
  backend "s3" {
    bucket = "terraform-ah-m"
    key    = "roboshop/dev/terraform.tfstate"
    region = "us-east-1"
  }
}

