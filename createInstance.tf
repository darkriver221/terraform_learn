
resource "aws_instance" "MyFirstInstnace" {
  count         = 1
  ami           = "ami-05d38da78ce859165"
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstance"
  }
}