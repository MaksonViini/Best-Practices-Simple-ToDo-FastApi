terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.26.0"
    }
  }
}

provider "digitalocean" {
  token = var.provider.do_token
}

resource "digitalocean_kubernetes_cluster" "api_cluster" {
  name   = "ks8-fastapi-web"
  region = var.region_ny

  node_pool {
    name       = var.node.name
    size       = var.node.size
    node_count = var.node.node_count


    taint {
      key    = var.taint.key
      value  = var.taint.value
      effect = var.taint.effect
    }
  }
}
