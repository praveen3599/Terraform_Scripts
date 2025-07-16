#creating the aws instance ussing the varibles file adn .tfvars file

resource "aws_instance" "Sample_EC2" {
  ami           = var.ami
  instance_type = "t2.micro"
}