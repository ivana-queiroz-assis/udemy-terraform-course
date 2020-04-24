resource "aws_eip" "web_ip" {
  instance = "${aws_instance.web.id}"
}

output "WEB Private IP" {
  value = "${aws_eip.web_ip.public_ip}"
}