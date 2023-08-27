#create a internet gateway
resource "aws_internet_gateway" "IGW-TF" {
    vpc_id = aws_vpc.EcommerceVPC.id 
}