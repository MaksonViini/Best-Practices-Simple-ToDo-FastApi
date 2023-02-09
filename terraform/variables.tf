variable "project_id" {
  type    = string
  default = "dulcet-legend-332817"
}

variable "region_ny" {
  type    = string
  default = "nyc1"
}

variable "version_k8s" {
  type    = string
  default = "1.25.4-do.0"
}

variable "name" {
  type    = string
  default = "worker-pool"
}

variable "size" {
  type    = string
  default = "s-2vcpu-2gb"
}

variable "node_count" {
  type    = string
  default = 3
}

variable "key" {
  type    = string
  default = "workloadKind"
}

variable "value" {
  type    = string
  default = "database"
}

variable "effect" {
  type    = string
  default = "NoSchedule"
}
