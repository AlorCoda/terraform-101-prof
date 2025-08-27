resource "aws_instance" "benji" {
  ami = data.aws_ami.ubuntu.id
  subnet_id = data.aws_subnet.selected.id 
  instance_type = "t2.micro"
  tags = {
    Name = "DataSources"
  }
}