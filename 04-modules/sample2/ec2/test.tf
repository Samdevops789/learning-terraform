resource "aws_instance" "web" {
  ami                    = "ami-02e5183eb59de7943"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sgid]
}

variable "sgid" {}