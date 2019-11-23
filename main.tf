# main.tf
terraform {
  backend "local" {
    path = "./state/terraform.tfstate"
  }
}

provider "google" {
  credentials = "${file("files/gcp_key.json")}"
  project = "${var.project_id}"
  region = "${var.region}"
}

module "kube-cluster" {
  source = "./modules/kube-cluster"

  location = "${var.region}"
  
  # Cluster
  cluster_name = "${var.cluster_name}"
  project_id = "${var.project_id}"

  # Node pool
  node_pool_name = "${var.node_pool_name}"
  node_count = "${var.node_count}"
  machine_type = "${var.machine_type}"
}