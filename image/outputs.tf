output "image_out" {
  value = "${docker_image.uniq_image_id.latest}"
}
