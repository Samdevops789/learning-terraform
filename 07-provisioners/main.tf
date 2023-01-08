resource "aws_instance" "web" {
  ami                    = "ami-02e5183eb59de7943"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-07f79705c0e4d936b"]

  provisioner "remote-exec" {

    connection {
      host     = self.public_ip
      user     = "root"
      password = "DevOps321"
    }

    inline = [
      "echo Hello World"
    ]

  }
}