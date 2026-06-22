
resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type[0]
  availability_zone           = var.availability_zone
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address

  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = var.type
} 

resource "aws_security_group" "my_sg" {
  name        = "web-sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
