variable "ami-id" {
  type = string
  default = "ami-081609eef2e3cc958"
}

variable "instances-name" {
  type = map
  default = {
    mongodb = "t3.micro"
    catalogue = "t2.micro"
    web = "t2.micro"
  }
  }

variable "sd-name" {
  type = string
  default = "dawshub.online"
  }

variable "zone-id" {
  default = "Z04463933CB28G174P97V"
  }
