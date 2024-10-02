# Creating Public Subnet for EC2 instance
resource "aws_subnet" "public-subnet" {
  vpc_id                  = "${aws_vpc.myvpc.id}"
  cidr_block             = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
tags = {
    Name = "Public Subnet"
  }
}