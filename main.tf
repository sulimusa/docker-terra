
# Download the latest Ghost image
#resource "docker_image" "uniq_image_id" {
#  name = "${var.image}"
#}

module "image" {
  source = "./image"
  image = "${lookup(var.image, var.env)}"
}

# Start the Container
#resource "docker_container" "uniq_container_id" {
#  name  = "${var.uniq_container_name}"
#  image = "${docker_image.uniq_image_id.latest}"
#  ports {
#    internal = "${var.int_port}"
#    external = "${var.ext_port}"
#  }
#}

module "container" {
  source = "./container"
# Main.tf is intermediary between image and containers modules, providing output from i to c 
  image = "${module.image.image_out}"
  uniq_container_name = "${lookup(var.uniq_container_name, var.env)}"
  int_port = "${lookup(var.int_port, var.env)}"
  ext_port = "${lookup(var.ext_port, var.env)}"
}
