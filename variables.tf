variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_SESSION_TOKEN" {}

variable "AWS_REGION" {
}

variable "Security_Group" {
    type = list
    default = ["sg-24076", "sg-90890", "sg-456789"]
}

variable "AMIS" {
    type = map
    default = {
        us-west-2 = "ami-05d38da78ce859165"
    }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "levelkey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "levelkey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}