resource "google_container_node_pool" "primary_preemptible_nodes" {
  name = "${var.node_pool_name}"
  cluster = "${google_container_cluster.primary.name}"
  location = "${var.location}"

  node_count = "${var.node_count}"

  node_config {
    preemptible = true
    machine_type = "${var.machine_type}"
    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}