variable "sg-name" {
    type = string
    default = "demo-sg-aws"
}

variable "sg-description" {
    type = string
    default = "Allow TLS inbound traffic"
}

variable "inbound-port" {
    type = string
    default = 0
}

variable "cidr-block" {
    type = list
    default = ["0.0.0.0/0"]
}