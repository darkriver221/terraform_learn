
resource "aws_instance" "MyFirstInstnace" {
  count         = 1
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstance"
  }
}