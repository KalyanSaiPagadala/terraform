resource "aws_instance" "web" {
  ami           =  var.ami-id# devops-practice
  instance_type = var.instances-name == "mongodb" ? "t3.small" : "t2.small"
  #vpc_security_group_ids = [aws_security_group.demo-sg.id] # this is list

  #tags = var.tags
}