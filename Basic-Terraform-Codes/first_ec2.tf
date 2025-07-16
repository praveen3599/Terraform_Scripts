provider "aws"{
    region = "us-east-1"
    access_key=var.aws_access_key
    secret_key=var.aws_secret_key
}

resource "aws_instance" "myec2"{
    ami = "ami-0150ccaf51ab55a51"
    instance_type= "t2.micro"
    tags = {
      "Name"= "Testing-EC2"
    }
}
