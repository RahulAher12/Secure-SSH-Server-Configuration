## Create AMI server ======================================================================
resource "aws_instance" "apache-server" {
  ami               = "ami-0f935a2ecd3a7bd5c"
  instance_type     = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow-web.id]
  subnet_id              = aws_subnet.dev-subnet.id
  monitoring             = false
  key_name          = "Linux-Singapore-Keypair-2024"
  user_data = file("${path.module}/apache.sh")
  tags = {
    Name = "apache-server"
  }
}
