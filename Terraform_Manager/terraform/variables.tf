variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "credentials_file" {
  description = "Path to the GCP service account JSON file"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM instance"
  type        = string
  default     = "terraform-vm"
}

# variable "bucket_name" {
#   description = "Name of the storage bucket"
#   type        = string
# }
