variable "location" {
  type = "string"
  description = "location of the cluster and node pool"
}

variable "cluster_name" {
  type = "string"
  description = "cluster name"
}

variable "project_id" {
  type = "string"
  description = "GCP's project id"
}

variable "node_pool_name" {
  type = "string"
  description = "name of the node pool"
}

variable "node_count" {
  type = "string"
  description = "node pool size"
}

variable "machine_type" {
  type = "string"
  description = "machine type"
  default = "n1-standard-1"
}



