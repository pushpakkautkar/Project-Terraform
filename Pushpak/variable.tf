variable "ami_id" {
  type = string
  default = "ami-07a00cf47dbbc844c"
}

variable "instance_type" {
  type= list(string)
  default = [ "t3.micro","t3.small","t3.medium" ]
}

variable "associate_public_ip_address" {
  type = bool
  default = true
}

variable "availability_zone" {
 type = string
  default = "ap-south-1-a"
}

variable "key_name" {
  type = string
  default = "hey111"
}

variable "type" {
  type = Map(string)
  default = {
    Name = "webserver
    Environment = "production"
    Enddate = "2024-06-30"
}