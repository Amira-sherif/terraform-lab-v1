# Creating Private subnet 
resource "aws_subnet" "private-subnet" {
  vpc_id                  = "${aws_vpc.myvpc.id}"
  cidr_block             = "10.0.2.0/24"
  availability_zone = "us-east-1a"
tags = {
    Name = "Private Subnet"
  }
}