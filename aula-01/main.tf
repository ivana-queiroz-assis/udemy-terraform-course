resource "aws_vpc" "myfirstVpc"{
    cidr_block = "10.0.0.0/16"

    tags={
        Region = "US"
    }    
}