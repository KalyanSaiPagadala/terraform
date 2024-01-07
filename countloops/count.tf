resource "aws_instance" "web" {
    ami           =  var.ami-id# devops-practice
    count = 3
    instance_type = "t2.micro"
    #vpc_security_group_ids = [aws_security_group.demo-sg.id] # this is list

    tags = {
        name = var.instances-name[count.index]
    }
}