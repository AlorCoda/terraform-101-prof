variable "webservers" {
  type = list(string)
  default = ["Sandbox", "Dev", "Staging", "Prod"]
}
