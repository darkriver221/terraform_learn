provider "aws" {
	access_key  = "${var.AWS_ACCESS_KEY}"
	secret_key  = "${var.AWS_SECRET_KEY}"
	token       = "${var.AWS_SESSION_TOKEN}"
	region      = "${var.AWS_REGION}"
}

module "ec2_cluster" {
  source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance.git"

  name          = "prod-${count.index+1}"
  ami           = "ami-00c257e12d6828491"
  instance_type = "t2.micro"
  subnet_id     = "subnet-02384c3e3b8caab96"

  instance_count = var.environment == "Production" ? 2:1

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}