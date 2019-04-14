variable "image" {
  description = "image for uniq container"
  default = "ghost:latest"
}
variable "uniq_container_name" {
  description = "Name of container"
  default = "blogger"
}
variable "int_port" {
  description = "internal port for container"
  default = "2368"
}
variable "ext_port" {
  description = "external port for container"
  default = "80"
}
