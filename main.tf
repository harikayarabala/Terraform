provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
count=3
  ami           = "ami-0cbbe2c6a1bb2ad63"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-server"
  }
}
