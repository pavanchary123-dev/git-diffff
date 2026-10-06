provider "aws" {
region = "ap-south-1" # Mumbai
}
 
resource "aws_instance" "web_server" {
ami = "ami-0f58b397bc5c1f2e" # Example Amazon Linux 2023 AMI
instance_type = "t2.micro"
 
tags = {
Name = "terraform-ec2"
Env = "dev"
}
}
