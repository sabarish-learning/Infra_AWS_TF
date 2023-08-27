#Create a VPC
resource "aws_vpc" "EcommerceVPC" {
    cidr_block = "10.24.0.0/16"
    tags ={
        Name = "EcommerceTFVPC"
    }
}



