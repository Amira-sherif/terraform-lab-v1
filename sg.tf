# Creating Security Group 
resource "aws_security_group" "allow_all_ports" {
  name        = "allow-all-ports"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = "allow_all-ports"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_sg1_ipv4" {
  security_group_id = aws_security_group.allow_all_ports.id
  cidr_ipv4         = aws_vpc.myvpc.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4s1" {
  security_group_id = aws_security_group.allow_port-3000.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
# Creating Security Group 
resource "aws_security_group" "allow_port-3000" {
  name        = "allow_port-3000"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = "allow-port-3000"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_sg2_ipv4" {
  security_group_id = aws_security_group.allow_port-3000.id
  cidr_ipv4         = aws_vpc.myvpc.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 3000
}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4-s2" {
  security_group_id = aws_security_group.allow_all_ports.id
  cidr_ipv4         = aws_vpc.myvpc.cidr_block
  ip_protocol       = "-1" # semantically equivalent to all ports
}
# resource "aws_security_group" "sg8" {
# vpc_id      = "${aws_vpc.myvpc.id}"
# # Inbound Rules
#   # ssh access from anywhere
#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

# # Outbound Rules
#   # Internet access to anywhere
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# resource "aws_security_group" "sg9" {
# vpc_id      = "${aws_vpc.myvpc.id}"
# security_group_id = aws_security_group.sg9.id
# # Inbound Rules
#   # HTTP access from anywhere
#   ingress {
#     from_port   = 22
#     to_port     = 3000
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/16"]
#   }

# # Outbound Rules
#   # Internet access to anywhere
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["10.0.0.0/16"]
#   }
# }
