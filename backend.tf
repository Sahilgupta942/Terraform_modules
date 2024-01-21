terraform {
  backend "s3" {
    bucket         = "terraform-test-sahilkgup"
    key            = "statefiles/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
  }
}
