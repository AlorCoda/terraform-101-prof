variable "ami" {
  type    = string
  default = "ami-05f991c49d264708f"
}

variable "instance_type" {
  type = map(string)
  default = {
    prod    = "t3.large",
    staging = "t2.medium",
    dev     = "t2.micro"
  }
}

variable "name_prefix" {
  type    = string
  default = "devops"
}

variable "servers" {
  type    = list(string)
  default = ["prod", "staging", "dev"]
}

variable "vpc_cidr" {
    type    = string
    default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
    type    = string
    default = "10.0.1.0/24"
}

variable "public_subnet_cidr" {
    type    = string
    default = "10.0.2.0/24"
}
