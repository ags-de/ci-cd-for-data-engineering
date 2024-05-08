resource "google_storage_bucket" "landing_zone" {
  name          = var.landing_bucket_name
  location      = var.gcp_location
  force_destroy = true

  public_access_prevention = "enforced"
}

resource "google_bigquery_dataset" "bq_dataset" {
  dataset_id                  = var.bigquery_dataset_name
  description                 = "BigQuery dataset used to store ingested data from Reddit website."
  location                    = var.gcp_location
  default_table_expiration_ms = 3600000
}

resource "google_bigquery_table" "bq_table" {
  dataset_id = google_bigquery_dataset.bq_dataset.dataset_id
  table_id   = var.bigquery_table_name

  time_partitioning {
    type = "DAY"

  }

  schema = <<EOF
[
  {
    "name": "permalink",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "The Permalink"
  },
  {
    "name": "state",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "State where the head office is located"
  }
]
EOF

}
