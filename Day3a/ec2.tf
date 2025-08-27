resource "aws_instance" "test1" {
  ami = var.ami 
  subnet_id = aws_subnet.private.id
  instance_type = var.instance_type["dev"]
  tags = {
    Name = "Output" 
  }
  depends_on = [ aws_subnet.private ]
}