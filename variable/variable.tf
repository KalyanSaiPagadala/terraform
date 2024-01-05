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