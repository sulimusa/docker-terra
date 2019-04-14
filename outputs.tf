# Output the IP adress and name of container
output "ip" {
#  value = "${docker_container.uniq_container_id.ip_address}"
  value = "${module.container.ip}"
}
output "container_name" {
# value = "${docker_container.uniq_container_id.name}"
  value = "${module.container.container_name}"
}
