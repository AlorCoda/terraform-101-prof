output "server-private-ip" {
  value = aws_instance.test1.private_ip
}

output "vpc-id" {
  value = aws_vpc.attah.id
}