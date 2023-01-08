resource "aws_instance" "app" {
  count                  = length(var.components)
  ami                    = data.aws_ami.ami.image_id
  instance_type          = "t3.micro"
  iam_instance_profile   = "SecretManager_Role_for_RoboShop_Nodes"
  vpc_security_group_ids = ["sg-07f79705c0e4d936b"]
  tags = {
    Name = "${var.components["${count.index}"]}-dev"
  }
}