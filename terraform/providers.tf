terraform {
  required_version = "~>1.3.7"
  required_providers {

    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.26.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }


}

provider "digitalocean" {
  token = var.DO_TOKEN
}

provider "aws" {
  region     = var.region_east
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
}