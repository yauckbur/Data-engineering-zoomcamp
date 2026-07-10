variable "credentials" {
  description = "My Credentials"
  default     = "my-creds.json"
}


variable "project" {
  description = "Project"
  default     = "project-3e72aac5-cab3-47fd-811"
}

variable "region" {
  description = "Region"
  default     = "europe-west2"
}

variable "location" {
  description = "Project Location"
  default     = "europe-west2"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "project-3e72aac5-cab3-47fd-811"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}