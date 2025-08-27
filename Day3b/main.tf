resource "aws_instance" "web" {
  ami = var.ami 
  instance_type = var.instance_type["staging"]
  subnet_id = aws_subnet.private.id
  depends_on = [aws_subnet.private]
  tags = {
    Name = local.resource_name 
  }
}
