provider "aws" {
	access_key  = "${var.AWS_ACCESS_KEY}"
	secret_key  = "${var.AWS_SECRET_KEY}"
	token       = "${var.AWS_SESSION_TOKEN}"
	region      = "${var.AWS_REGION}"
}

module "ec2_cluster" {
  source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance.git"

  name          = "${substr(var.environment, 0, 3)}-${count.index+1}"
  ami           = var.environment == "Production" ? var.ami_pro:var.ami_dev
  instance_type = "t2.micro"
  subnet_id     = "subnet-02384c3e3b8caab96"

  count = var.environment == "Production" ? 2:1

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}