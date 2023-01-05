terraform {
  backend "s3" {
    bucket = "terraform-b66"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-02e5183eb59de7943"
  instance_type = "t3.micro"
}