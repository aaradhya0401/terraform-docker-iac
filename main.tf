terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.2"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "terraform_demo" {
  name  = "terraform-iac-demo"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8081
  }
}