variable "ami" {
  description = "value of the AMI to use for the EC2 instance"
  type = string
  #default = "ami-05f991c49d264708f"
}

variable "instance_type" {
  description = "value of the instance type to use for the EC2 instance"
  type = string
  default = "t2.2xlarge"
}
variable "s3_bucket_name" {
    description = "Name of the S3 bucket to create"
    type = string
    default = "demo-benji-testing-day-5th"
}
  
variable "vpc_cidr" {
  description = "CIDR block for the vpc"
  type = string
  default = "10.0.0.0/16"
}
variable "vpc_subnet_cidrs" {
  description = "CIDR block for the public subnet"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
