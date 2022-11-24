variable "test" {
  default = "hello"
}

Output "test" {
  value = var.test
}