resource "aws_launch_configuration" "web" {
  name_prefix                 = "web-"
  image_id                    = "ami-0f5ee92e2d63afc18"
  instance_type               = "t2.micro"
  key_name                    = "TF_Key"
  security_groups             = [aws_security_group.SGTFVPC.id]
  associate_public_ip_address = true
  lifecycle {
    create_before_destroy = true
  }
}
