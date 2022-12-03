resource "aws_instance" "instance" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"
}