# Creating EC2 Instance
resource "aws_instance" "wordpress8" {
  ami                         = "ami-0cf7b2f456cd5efd4"
  instance_type               = "t2.micro"
  key_name                    = "WP-key"
  vpc_security_group_ids      = [aws_security_group.ec2-SG.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")

  tags = {
    Name = "Wordpress"
  }
}
