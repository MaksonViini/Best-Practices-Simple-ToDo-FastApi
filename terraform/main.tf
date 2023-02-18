module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "terraform-remote-state-bucket-id-1"
  acl    = "private"

  versioning = {
    enabled = true
  }

}

resource "digitalocean_kubernetes_cluster" "api_cluster" {
  name   = "ks8-fastapi-web"
  region = var.region_ny

  version = var.version_k8s

  node_pool {
    name       = var.name
    size       = var.size
    node_count = var.node_count


    taint {
      key    = var.key
      value  = var.value
      effect = var.effect
    }
  }
}
