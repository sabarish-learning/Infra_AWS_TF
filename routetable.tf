#create a route table for Public Subnet
resource "aws_route_table" "PublicRoute" {
  vpc_id = aws_vpc.EcommerceVPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW-TF.id
  }
}


#create a route table association for Public Subnet
resource "aws_route_table_association" "PublicRouteA" {
  subnet_id      = aws_subnet.PublicSubnetA.id
  route_table_id = aws_route_table.PublicRoute.id
}

resource "aws_route_table_association" "PublicRouteB" {
  subnet_id      = aws_subnet.PublicSubnetB.id
  route_table_id = aws_route_table.PublicRoute.id
}
