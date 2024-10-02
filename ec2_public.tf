# Creating EC2 instance in Public Subnet
resource "aws_instance" "bastion" {
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allow_all_ports.id ]
  subnet_id = aws_subnet.public-subnet.id
  associate_public_ip_address = true
tags = {
    Name = "My Public Instance"
  }
}
# Creating EC2 instance in Public Subnet
resource "aws_instance" "demoinstance2" {
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"
  key_name = "tests"
  vpc_security_group_ids = [ aws_security_group.allow_port-3000.id ]
  subnet_id = aws_subnet.private-subnet.id
  associate_public_ip_address = true
tags = {
    Name = "My Private Instance"
  }
}