resource "aws_instance" "web" {
    count = 4 
    ami           =  var.ami-id# devops-practice
    instance_type = var.instances-name[count.index] == "mongodb" || var.instances-name[count.index] == "mysql" ? "t3.micro" : "t2.micro"
    tags = {
        Name = var.instances-name[count.index]
    }
}

resource "aws_route53_record" "www" {
    count = 4
    zone_id = var.zone-id
    name    = "${var.instances-name[count.index]}.${var.sd-name}"  # dns record name ${} are used for interpolation
    type    = "A"
    ttl     =1
    records = var.instances-name[count.index] == "web" ? [aws_instance.web[count.index].public_ip] : [aws_instance.web[count.index].private_ip]         # which type of ip shoud be attached to the specific record
    }