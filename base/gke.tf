resource "google_container_cluster" "primary" {
  name     = "${local.project_id}-gke"
  location = local.region

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = "dev-vpc"
  subnetwork = "k8s-public-subnet"

  node_config {
    disk_size_gb = 40
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = google_container_cluster.primary.name
  location   = local.region
  cluster    = google_container_cluster.primary.name
  node_count = var.gke_num_nodes

  node_config {
    disk_size_gb = 40
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = local.project_id
    }

    machine_type = "n1-standard-1"
    tags         = ["gke-node", "${local.project_id}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}
