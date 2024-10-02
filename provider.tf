# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# terraform {
#   backend "s3" {
#     bucket = "amirasherifbucket"
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#   }
# }
