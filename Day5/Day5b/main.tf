resource "aws_instance" "webservers" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  for_each      = toset(var.webservers)
  tags = {
    Name = each.key
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
