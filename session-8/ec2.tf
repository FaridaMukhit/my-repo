resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web1.id ]
  key_name = aws_key_pair.teraform_server.key_name
  provisioner "file" {
    source = "~/my-repo/session-8/index.html"
    destination = "/tmp/index.html"
    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}
resource "aws_key_pair" "teraform_server" {
  key_name = "terraform-server-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

