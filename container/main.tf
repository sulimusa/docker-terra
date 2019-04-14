# Start the Container
resource "docker_container" "uniq_container_id" {
  name  = "${var.uniq_container_name}"
  image = "${var.image}"
  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}
