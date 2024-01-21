data "terraform_remote_state" "security_group_data" {
  backend = "s3"
  config = {
    bucket = "terraform-test"
    key    = "statefiles/module-statefiles/securitygroup_module.tfstate"
    region = "eu-west-1"
  }
}


resource "aws_cloudformation_stack" "terraform_EC2" {
    name = "TerraformTestEC2-Sahilkgup"
    template_body = file("${path.module}/template.yaml")
    parameters = {
        SecurityGroupTerraform = data.terraform_remote_state.security_group_data.outputs.SecurityGroup_terraform
        SecurityGroupTerraformNew1 = data.terraform_remote_state.security_group_data.outputs.SecurityGroup_terraform_new1
  }  
}

output "terraformInstance1" {
    value = aws_cloudformation_stack.terraform_EC2.outputs["InstanceId1"]
}

output "terraformInstance2" {
    value = aws_cloudformation_stack.terraform_EC2.outputs["InstanceId2"]
}

output "terraformInstance3" {
    value = aws_cloudformation_stack.terraform_EC2.outputs["InstanceId3"]
}
