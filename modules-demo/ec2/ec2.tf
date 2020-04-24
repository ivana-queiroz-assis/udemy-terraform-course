
variable "ec2name" {
  type= "string"
}

resource "aws_instance" "moduleEc2" {
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"

  tags={
    Name = "${var.ec2name}"
  }
}






