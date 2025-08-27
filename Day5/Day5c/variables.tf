variable "ami" {
  default = "ami-xyz, AMI-ABC, ami-efg"
  type = string 
  description = "A string containing ami ids"
}

variable "nations" {
  default = "ghana, nigeria, britain, canada, cameroon, americans"
  type = string 
  description = "a comma separated list of nation names"
}

variable "ami2" {
  default = ["ami-xyz", "AMI-ABC", "ami-efg"]
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}