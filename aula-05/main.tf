

resource "aws_instance" "myec2" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"

  tags={
    Name = "Public IP"
  }

}

resource "aws_eip" "elastic_ip" {
  instance ="${aws_instance.myec2.id}"
}

output "Public IP" {
  value = "${aws_eip.elastic_ip.public_ip}"
}





