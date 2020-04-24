

resource "aws_vpc" "myvpc" {
  cidr_block = "192.168.0.0/24"

}

output "VPCID" {
  value = "${aws_vpc.myvpc.id}"
}


