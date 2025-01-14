variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_SESSION_TOKEN" {}

variable "AWS_REGION" {
    type = string
    default = "us-west-2"
}

variable "Security_Group" {
    type = string
    default = "sg-06c1daca589feedab"
}

variable "AMIS" {
    type = map
    default = {
        us-west-2 = "ami-05d38da78ce859165"
    }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "level"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "level.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}