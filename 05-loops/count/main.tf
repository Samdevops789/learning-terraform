resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-02e5183eb59de7943"
  instance_type = "t3.micro"
  tags = {
    Name = "sample-${count.index + 1}"
  }
}
