resource "aws_cloudformation_stack" "terraform_S3" {
    name = "TerraformTestS3-Sahilkgup"
    template_body = file("${path.module}/template.yaml")
}

output "terraform_S3_bucket" {
    value = aws_cloudformation_stack.terraform_S3.outputs["S3BucketName"]
}
