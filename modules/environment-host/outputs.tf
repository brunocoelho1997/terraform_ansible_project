output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.container_environment.id
}

# output "prd_container_id" {
#   description = "ID of the Docker container"
#   value       = docker_container.prd.id
# }

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.alpine.id
}