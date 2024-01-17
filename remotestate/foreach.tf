resource "aws_instance" "web" {
    for_each = var.instances-name
    ami           =  var.ami-id# devops-practice
    instance_type =  each.value
    tags = {
        Name = each.key
    }
}

resource "aws_route53_record" "www" {
    for_each = aws_instance.web
    zone_id = var.zone-id
    name    = "${each.key}.${var.sd-name}"  # dns record name ${} are used for interpolation
    type    = "A"
    ttl     =1
    records = [each.key == "web" ? each.value.public_ip :  each.value.private_ip  ]        # which type of ip shoud be attached to the specific record
    }