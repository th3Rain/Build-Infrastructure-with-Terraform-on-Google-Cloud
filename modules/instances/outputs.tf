output "instance-1" {
  value = google_compute_instance.tf-instance-1.current_status
}

output "instance-2" {
  value = google_compute_instance.tf-instance-2.current_status
}

# output "instance-3" {
#   value = google_compute_instance.tf-instance-3.current_status
# }