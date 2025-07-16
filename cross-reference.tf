#Creating the elastic IP
resource "aws_eip" "lb" {
  domain   = "vpc"
}


#Creating the SG 
resource "aws_security_group" "testing" {
  name        = "testing"
  description = "Allow Elastic Ip inbound traffic and all outbound traffic"
}


#Adding the Elastic IP to Inbond rule
resource "aws_vpc_security_group_ingress_rule" "testing" {
  security_group_id = aws_security_group.testing.id
  cidr_ipv4         = "${aws_eip.lb.public_ip}/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
