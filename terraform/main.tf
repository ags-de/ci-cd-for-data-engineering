resource "google_storage_bucket" "landing_zone" {
  name          = var.landing_bucket_name
  location      = var.gcp_location
  force_destroy = true

  public_access_prevention = "enforced"
}