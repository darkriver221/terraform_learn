variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_SESSION_TOKEN" {}

variable "AWS_REGION" {
    type = string
    default = "us-west-2"
}

variable "environment" {
    type = string
    default = "Production"
}