variable "region" {
  type = "string"
  description = "region of the project"
}

variable "project_id" {
  type = "string"
  description = "project id"
}

variable "cluster_name" {
  type = "string"
  description = "name of the cluster"
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