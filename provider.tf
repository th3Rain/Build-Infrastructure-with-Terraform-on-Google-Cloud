terraform {
    backend "gcs" {
        bucket  = "tf-bucket-921435"
        prefix  = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"  # Using a simplified constraint for version 4.x.x
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.0"  # Make sure google-beta aligns with google provider
    }
  }
}


provider "google" {
  project   = var.project_id
  region    = var.region
  zone      = var.zone
}