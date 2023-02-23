resource "aws_instance" "first_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg
  tags = {
    Name = "${var.env}-instance"
  }
}