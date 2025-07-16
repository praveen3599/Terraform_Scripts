#creating elastic IP
resource "aws_eip" "lb" {
  domain   = "vpc"
}


#Output all the attributues of elb

output "attribues_total" {
    value = aws_eip.lb
}

#output only required attrubute value

output "public-ip"{
    value = aws_eip.lb.public_ip
}

#output by customizing as required

output "Customize-ip"{
    value = "https://${aws_eip.lb.public_ip}:8000"
}