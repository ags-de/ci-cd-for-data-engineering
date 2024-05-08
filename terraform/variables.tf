variable "gcp_project" {
    description = "GCP project name"
    type        = string
    default     = "ci-cd-for-data-engineering"
}

variable "gcp_location" {
    description = "Region of GCP infrastructure"
    type        = string
    default     = "europe-central2"
}

variable "landing_bucket_name" {
    description = "Name of the landing zone bucket"
    type        = string
    default     = "ags-proj-landing-zone-bucket"
}

variable "bigquery_dataset_name" {
    description = "Name of the BigQuery dataset"
    type        = string
    default     = "ags_proj_dataset"
}

variable "bigquery_table_name" {
    description = "Name of the BigQuery table"
    type        = string
    default     = "test_table"
}