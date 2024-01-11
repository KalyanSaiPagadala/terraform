# resource "aws_instance" "web" {
#     count = 4 
#     ami           =  var.ami-id# devops-practice
#     instance_type = local.instance_type
#     tags = {
#         Name = var.instances-name[count.index]
#     }
# }

# resource "aws_route53_record" "www" {
#     count = 4
#     zone_id = var.zone-id
#     name    = "${var.instances-name[count.index]}.${var.sd-name}"  # dns record name ${} are used for interpolation
#     type    = "A"
#     ttl     =1
#     records = [local.records]       # which type of ip shoud be attached to the specific record
#     }

resource "aws_instance" "web" {
  ami           = var.ami-id #devops-practice
  instance_type = local.instance_type
  tags = {
    Name = "locals"
  }
}