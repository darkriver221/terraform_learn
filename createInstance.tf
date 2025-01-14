
resource "aws_instance" "MyFirstInstnace" {
  instance_type = "t2.micro"
  tags = {
    Name = "demoinstnce"
  }
}