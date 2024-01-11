output "ami-id" {
  value = data.aws_ami.centos8.id
}

output "vpc" {
  value = data.aws_vpc.default
}