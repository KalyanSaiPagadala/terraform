variable "ami-id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instances-name" {
  type = list
  default = ["mongodb", "catalogue" , "web"]
  }
