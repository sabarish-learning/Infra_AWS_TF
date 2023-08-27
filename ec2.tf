resource "aws_instance" "web" {
  ami                         = "ami-0f5ee92e2d63afc18"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.PublicSubnetA.id
  vpc_security_group_ids      = [aws_security_group.SGTFVPC.id]
  associate_public_ip_address = true
  key_name                    = "TF_Key"
  availability_zone           = "ap-south-1a"
  tags = {
    Name = "Web-app-Server"
  }
}

resource "aws_instance" "web01" {
  ami                         = "ami-0f5ee92e2d63afc18"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.PublicSubnetB.id
  vpc_security_group_ids      = [aws_security_group.SGTFVPC.id]
  associate_public_ip_address = true
  key_name                    = "TF_Key"
  availability_zone           = "ap-south-1b"
  tags = {
    Name = "Web-app-Server01"
  }
}

