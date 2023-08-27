#Create a public subnet
resource "aws_subnet" "PublicSubnetA" {
  vpc_id                  = aws_vpc.EcommerceVPC.id
  cidr_block              = "10.24.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1a"
  tags = {
    Name = "PublicSubnetA"
  }
}

#Create a Private subnet
resource "aws_subnet" "PublicSubnetB" {
  vpc_id                  = aws_vpc.EcommerceVPC.id
  cidr_block              = "10.24.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1b"
  tags = {
    Name = "PublicSubnetB"
  }
}
