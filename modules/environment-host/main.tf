terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

resource "docker_image" "alpine" {
  name         = "alpine:3.14"
  keep_locally = false
}

resource "docker_container" "container_environment" {
  image = "${docker_image.alpine.latest}"
  name  = var.container_name
  must_run = true
  ports {
    internal = 8080
    external = var.external_port
  }
  command = [
    "tail",
    "-f",
    "/dev/null"
  ]
}

# resource "docker_container" "prd" {
#   image = docker_image.alpine.latest
#   name  = var.prd_container_name
#   ports {
#     internal = 8080
#     external = 8081
#   }
# }