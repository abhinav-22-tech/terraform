resource "aws_security_group" "group" {
  name = "OurGroup"

  tags = {
    name = "OutGroup"
  }
}

resource "aws_security_group_rule" "single" {
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = [ "0.0.0.0/0" ]
  security_group_id = aws_security_group.group.id
}

resource "aws_security_group_rule" "range" {
  type = "ingress"
  from_port = 1000
  to_port = 1000
  protocol = "tcp"
  cidr_blocks = [ "0.0.0.0/0" ]
  security_group_id = aws_security_group.group.id
}