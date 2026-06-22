provider "aws" {
  region = "ap-south-1"
}
 
 resource "aws_instance" "my_ec2" {
  ami           = "ami-07a00cf47dbbc844c"
  instance_type = "t3.micro"
  key_name.     = "hey111"


   tag = {
    Name = "terraform-ec2"
   }
}