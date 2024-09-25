resource "google_storage_bucket" "cloud-bucket" {
  name          = var.bucket-name
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true
}