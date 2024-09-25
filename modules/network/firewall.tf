resource "google_compute_firewall" "rules" {
  project     = var.project_id
  name        = var.firewall-name
  network     = "projects/${var.project_id}/global/networks/${var.vpc-name}"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol  = "tcp"
    ports     = ["80"]
  }

  source_ranges = [ "0.0.0.0/0" ]
}