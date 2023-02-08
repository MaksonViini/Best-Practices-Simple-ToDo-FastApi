variable "project_id" {
  type    = string
  default = "dulcet-legend-332817"
}


variable "provider" {
  type = string 
  do_token = "dsdsd"
}


variable "region_ny" {
  type    = string
  default = "nyc1"
}

variable "node" {
  type       = string
  name       = "worker-pool"
  size       = "size"
  node_count = 3
}

variable "taint" {
  key    = "workloadKind"
  value  = "database"
  effect = "NoSchedule"

}
