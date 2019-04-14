# Download the latest Ghost image
resource "docker_image" "uniq_image_id" {
  name = "${var.image}"
}

