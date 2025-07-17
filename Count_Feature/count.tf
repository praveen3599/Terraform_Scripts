/*
#creating instances with unique names by adding numbers at the end of their nameusing count.index
resource "aws_instance" "example" {
  ami           = "ami-0150ccaf51ab55a51"
  instance_type = "t2.micro"
  count = 3

  tags = {
    Name = "Example-instance-${count.index}"
  }
}




#creating users with unique names by adding numbers at the end of their nameusing count.index
resource "aws_iam_user" "iamuser" {
  name = "Count-testing-${count.index}"
  count = 3
}

*/

#creating users with unique names by adding numbers at the end of their nameusing count.index
variable "user-names"{
    default=["Alex","bob","camry"]
}

resource "aws_iam_user" "counttesting" {
  name = var.user-names[count.index]
  count = 3
}
