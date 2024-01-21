terraform {
  backend "s3" {
    bucket         = "terraform-test"
    key            = "statefiles/module-statefiles/securitygroup_module.tfstate"
    region         = "eu-west-1"
    encrypt        = true
  }
}
