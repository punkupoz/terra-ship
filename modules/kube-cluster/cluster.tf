resource "google_container_cluster" "primary" {
  name = "${var.cluster_name}"
  location = "${var.location}"

  remove_default_node_pool = true
  initial_node_count = 1

  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${google_container_cluster.primary.name} --project ${var.project_id}"
  }
}