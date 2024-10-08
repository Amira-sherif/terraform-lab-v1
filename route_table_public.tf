# Creating Route Table for Public Subnet
resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.myvpc.id
route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.digw.id
    }
tags = {
        Name = "Public Subnet Route Table"
    }
}
resource "aws_route_table_association" "rt_associate_public" {
    subnet_id = aws_subnet.public-subnet.id
    route_table_id = aws_route_table.rt.id
}