resource "aws_security_group" "variable_testing" {
  name        = "variable tetsing"
  description = "Allow ports mentioned in inbound traffic and all outbound traffic"
}

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.variable_testing.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.app_port
  ip_protocol       = "tcp"
  to_port           = var.app_port
}


resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.variable_testing.id
  cidr_ipv4        = var.vpn_ip
  from_port         = var.ssh_port
  ip_protocol       = "tcp"
  to_port           = var.ssh_port
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.variable_testing.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ftp_port
  ip_protocol       = "tcp"
  to_port           = var.ftp_port
}
