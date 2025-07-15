provider "aws"{
    region="us-east-1"
}


resource "aws_instance" "firewall-test-ec2"{
    ami = "ami-0150ccaf51ab55a51"
    instance_type = "t2.micro"

    tags = {
        "Name" = "Fairewall-testing-ec2"
    }
}


resource "aws_security_group" "allow_tls" {
    name        = "Firewall-tetsing"
    description = "Allow TLS inbound traffic and all outbound traffic"
    tags = {
        Name = "Firewall-testing"
    }
}

resource "aws_vpc_security_group_ingress_rule" "Allow_IPv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 100
}

resource "aws_vpc_security_group_egress_rule" "Allow_IPv6" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
