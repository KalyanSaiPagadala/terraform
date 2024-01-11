variable "ami-id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instances-name" {
  type = list
  default = ["mongodb", "catalogue" , "web","mysql"]
  }

variable "sd-name" {
  type = string
  default = "dawshub.online"
  }

variable "zone-id" {
  default = "Z04463933CB28G174P97V"
  }

variable "isProd" {
  type = bool
  default = true
}
