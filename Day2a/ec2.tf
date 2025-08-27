resource "aws_instance" "new" {
  ami = var.ami   
  instance_type = var.instance_type 
  tags = {
    Name = "Benito",
    Created_by = "Devops Engineer"
  }
}