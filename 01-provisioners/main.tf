resource "aws_instance" "instance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0ce01673ed9893e29"]

  provisioner "remote-exec" {
    connection {
      type = "ssh"
      host = self.public_ip
      user = "ec2-user"
      password = "DevOps321"
    }
    inline = [
      "sudo mkdir  devops-terrafrom",
      "touch file.txt",
      "echo  here i am working on terraform provisioner concept >> /tmp/echo.txt"
    ]
  }
}