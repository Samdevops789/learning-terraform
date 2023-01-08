resource "aws_instance" "web" {
  ami           = "ami-02e5183eb59de7943"
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}

variable "instance_type" {
  default = null
}