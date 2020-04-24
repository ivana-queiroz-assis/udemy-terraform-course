resource "aws_instance" "web" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  user_data = "${file("./web/server-script.sh")}"

  security_groups = ["${aws_security_group.web_sg.name}"]

  tags={
    Name = "Web Server"
  }
}





