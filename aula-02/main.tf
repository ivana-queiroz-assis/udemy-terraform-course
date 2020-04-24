variable "vpcname" {
  type ="string"
  default="VPCTerraform"
}

variable "mylist" {
  type = "list"
  default = ["value1", "value2"]
}

variable "mymap" {
  type ="map"

  default={
    key1="value1"
    key2="value2"
  }
}

resource "aws_vpc" "myvpc" {
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "${var.mylist[0]}"
  }
}
