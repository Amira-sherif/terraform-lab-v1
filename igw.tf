# Creating Internet Gateway 
resource "aws_internet_gateway" "digw" {
  vpc_id = "${aws_vpc.myvpc.id}"
  tags = {
    Name = "digw"
  }
}
# # Creating Internet Gateway 
# resource "aws_internet_gateway" "igw" {
#   vpc_id = "${aws_vpc.myvpc.id}"
# }
