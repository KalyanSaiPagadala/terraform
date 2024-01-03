resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" # devops-practice
  instance_type = "t2.micro"

  tags = {
    Name = "Helloterraform" # instance name
  }
}

