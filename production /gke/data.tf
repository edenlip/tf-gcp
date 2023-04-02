data "google_client_config" "provider" {}

data "google_container_cluster" "my_cluster" {
  name     = "${local.project_id}-gke"
  location = "us-east1"
}
