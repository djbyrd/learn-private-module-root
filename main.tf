provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/learn-terraform-3481/s3-webapp/aws"
  version = "1.0.0"
  # source  = "app.terraform.io/hashicorp-learn/s3-webapp/aws"
  # version = "1.0.0"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
}
