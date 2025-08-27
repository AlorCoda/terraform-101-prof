variable "ami" {
  description = "value of AMI to use of EC2 instance"
  type        = string
  default     = "ami-05f991c49d264708f"
}

variable "instance_type" {
  type = map(any)
  default = {
    "prod" = "t3.large"
    "dev"  = "t2.micro"
  }
}

# variable "s3_bucket_name" {
#   description = "name of s3 bucket"
#   type        = string
#   default     = "demo-benito-testing-day-5th"
# }

variable "vpc_cidr" {
  description = "CIDR block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}


variable "vpc_subnet_cidr" {
  description = "list of CIDR blocks for VPC subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
