variable "AWS_REGION" {
    default = "eu-west-1"
}

variable "Security_Groups" {
    type = list
    default = ["sg-24076","sg-24591"]
    description = "Dummy SG values"
}

variable "AMIs" {
    type = map
    default = {
        eu-west-1 = "ami-0dab0800aa38826f2"
    }
}
