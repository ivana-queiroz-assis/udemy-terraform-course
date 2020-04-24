

resource "aws_instance" "myec2" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"

  security_groups = ["${aws_security_group.web_traffic.name}"]

  tags={
    Name = "Security Group EC2"
  }

}

resource "aws_security_group" "web_traffic" {
  name = "allow_tls"
  description = "Allow HTTPS inbound traffic"

  ingress{
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port =443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]

  }
}






