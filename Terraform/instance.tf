resource "aws_instance" "web_server" {
  name          = "centos-web-server"
  description   = "centos server created from ansible and maked my ami"
  ami           = "ami-0faa4082907c89031"
  instance_type = "t2.micro"
  key_name      = "web.pem"
  security_groups = [
    module.security-group_http-80.security_group_id
  ]
  subnet_id = module.vpc.public_subnets[0]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("~/.ssh/web.pem")
    host        = aws_instance.web_server.public_ip
  }
  tags = {
    Name    = "web-server"
    Owner   = "Denis"
    Progect = "Task_5.4"
  }
}