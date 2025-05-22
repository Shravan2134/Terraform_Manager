terraform {
  backend "gcs" {
    bucket      = "terraform-state1302"
    prefix      = "terraform/state"
    credentials = "/home/adminuser/Terraform_Manager/credentials.json"
  }
}
