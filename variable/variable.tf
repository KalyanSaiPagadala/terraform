variable "ami-id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instances-type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map
  default = {
    name = "hello terraform"
    project = "roboshop"
    environment = "dev"
    component = "web"
    terraform = "true"
  }
}

variable "sg-name" {
  type = string
  default = "demo-sg"
}

variable "sg-description" {
  type = string
  default = "allow all tcp ports"
}

variable "inbound-port" {
  type = number
  default = 0
}

variable "cidr-block" {
  type = list
  default = ["0.0.0.0/0"]
}


