variable "env" {
  description = "env: dev or prod"
}

variable "image" {
  description = "image for uniq container"
  type = "map"
  default = {
    dev = "ghost:latest"
    prod = "ghost:alpine"
  }
}

variable "uniq_container_name" {
  description = "Name of container"
  type = "map"
  default = {
    dev = "dev_blogger"
    prod = "prod_blogger"
   }
}
variable "int_port" {
  description = "internal port for container"
  type = "map"
  default = {
    dev = "2368"
    prod = "2368"
  }
}
variable "ext_port" {
  type = "map"
  description = "external port for container"
  default = {
    dev = "80"
    prod = "8080"
  }
}
