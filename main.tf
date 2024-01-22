module "security_group" {
  source = "./securitygroup_module"
}

module "S3" {
  source = "./s3_module"
}

module "EC2" {
  source = "./ec2_module"
}

resource "aws_instance" "Terraform-Sahilkgup-instance" {
  ami           = lookup(var.AMIs, var.AWS_REGION)
  instance_type = "t2.micro"
  security_groups = [module.security_group.SecurityGroup_terraform]
  tags = {
    Name = "Terraform_main_test"
  }
}

resource "aws_instance" "Terraform-Sahilkgup-instance" {
  ami           = "ami-0dab0800aa38826f2"
  instance_type = "t2.micro"
  security_groups = var.Security_Groups
  tags = {
    Name = "Terraform_main_test_dummy"
  }
}
