variable "ssh_port" {
    description = "The ssh port to access the server from the terminal"
    type = number
    default = 6443 
}

variable "key_pair" {
    description = "AWS key pair name for EC2 access"
    type = string
    default = "nmap-key" 
}