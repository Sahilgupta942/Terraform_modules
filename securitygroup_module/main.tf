resource "aws_cloudformation_stack" "terraform_SecurityGroup" {
    name = "TerraformTestSecurityGroup-Sahilkgup"
    template_body = file("${path.module}/template.yaml")
}

output "SecurityGroup_terraform" {
    value = aws_cloudformation_stack.terraform_SecurityGroup.outputs["SecurityGroupTerraform"]
}

output "SecurityGroup_terraform_new1" {
    value = aws_cloudformation_stack.terraform_SecurityGroup.outputs["SecurityGroupTerraformNew1"]
}
