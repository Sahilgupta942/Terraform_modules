terraform {
  backend "s3" {
    bucket         = "terraform-test"
    key            = "statefiles/module-statefiles/ec2_module.tfstate"
    region         = "eu-west-1"
    encrypt        = true
  }
}
