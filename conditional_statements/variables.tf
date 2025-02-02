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

variable "ami_dev" {
    type = string
    default = "ami-00c257e12d6828491" # Ubuntu machine
}

variable "ami_pro" {
    type = string
    default = "ami-0a897ba00eaed7398" # Amazon Linux machine
}
