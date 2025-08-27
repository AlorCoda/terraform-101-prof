resource "aws_instance" "test2" {
  ami = "ami-05f991c49d264708f" 
  instance_type = "t2.micro"
  tags = {
    Name = "Nana Yaw"
  }
}