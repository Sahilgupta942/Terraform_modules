terraform {
  backend "s3" {
    bucket         = "terraform-test"
    key            = "statefiles/module-statefiles/s3_module.tfstate"
    region         = "eu-west-1"
    encrypt        = true
  }
}
