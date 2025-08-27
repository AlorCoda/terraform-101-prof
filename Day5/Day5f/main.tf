resource "aws_instance" "t-import" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"    #invoke the spirit of terraform in an already provision instance
  tags = {                      #you can then use terraform destroy
    Name = "tf-import"
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