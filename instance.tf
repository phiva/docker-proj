resource "aws_instance" "docker" {
  ami           = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"
  key_name      = "Avanti"
  security_groups = [
    "allow_ssh",
    "allow_http",
    "allow_egress",
  ]
  user_data = file("script.sh")

  tags = {
    Name = "docker"
  }
}

resource "aws_vpc" "My-vpc" {
  cidr_block = "172.31.0.0/16"

}

resource "aws_subnet" "my-subnet-01" {
  vpc_id     = aws_vpc.My-vpc.id
  cidr_block = "172.31.0.0/20"

  tags = {
    Name = "My-Subnet"
  }
}
