terraform {

  required_version = "1.4.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.57.0"
    }
  }

}

provider "google" {
  project = local.project_id
  region  = local.region
}
