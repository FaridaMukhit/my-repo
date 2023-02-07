resource "aws_instance" "first_ec2" {
  ami           = "ami-0aa7d40eeae50c9a9"
  vpc_security_group_ids = [ aws_security_group.web5.id ]
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}
