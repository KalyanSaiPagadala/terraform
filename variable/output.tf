# this code is used to get the complete information about the instance

output  "instances-info" {
    value = aws_instance.web
}



# this code is used to get sepoarate info about instances 

output  "instances-id" {
    value = aws_instance.web.id
}

output  "public_ip" {
    value = aws_instance.web.public_ip
}

output  "private_ip" {
    value = aws_instance.web.private_ip
}