resource "aws_instance" "main" {
  count = 3
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web1.id ]
  tags = {
    Name        = "${var.env}-instance"
  }
} 