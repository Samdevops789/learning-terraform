data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-7-DevOps-Practice"
  owners      = ["619386461854"]
}