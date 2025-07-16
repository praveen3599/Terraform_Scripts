provider "aws"{
    region = "us-east-1"
}


resource "aws_eip" "lb" {
    domain   = "vpc"
}

resource "aws_instance" "attributes-test" {
    ami = "ami-0150ccaf51ab55a51"
    instance_type = "t2.micro"
}