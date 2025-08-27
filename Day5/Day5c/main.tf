resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = "t2.micro"
}

