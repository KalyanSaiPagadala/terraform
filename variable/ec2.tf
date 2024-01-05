resource "aws_instance" "web" {
  ami           =  var.ami-id# devops-practice
  instance_type = var.instances-type
  vpc_security_group_ids = [aws_security_group.demo-sg.id] # this is list

  tags = var.tags
}