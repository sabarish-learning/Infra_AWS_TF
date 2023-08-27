resource "aws_key_pair" "TF_Key" {
  key_name   = "TF_Key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "TF-key" {
  content         = tls_private_key.rsa.private_key_pem
  filename        = "TF_Key.pem"
  file_permission = "0400"
} 
