provider "aws" {
	access_key  = "${var.AWS_ACCESS_KEY}"
	secret_key  = "${var.AWS_SECRET_KEY}"
	token       = "${var.AWS_SESSION_TOKEN}"
	region      = "${var.AWS_REGION}"
}

#Module
module "myvpc" {
    source = "./module/network"
}

#Resource key pair
resource "aws_key_pair" "levelup_key" {
  key_name      = "levelup_key"
  public_key    = file(var.public_key_path)
}

#EC2 Instance
resource "aws_instance" "levelup_instance" {
  ami                       = var.instance_ami
  instance_type             = var.instance_type
  subnet_id                 = module.myvpc.public_subnet_id
  vpc_security_group_ids    = module.myvpc.sg_22_id
  key_name                  = aws_key_pair.levelup_key.key_name

  tags = {
		Environment         = var.environment_tag
	}
}