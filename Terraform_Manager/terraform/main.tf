provider "google" {
  project     = "pure-girder-452812-r3"
  region      = var.region
  credentials =  file("/home/adminuser/Terraform_Manager/credentials.json")
}



resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = "e2-medium"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

   network_interface {
    network = "default"

    # 🔹 Explicitly assign an external IP
    access_config {
  }
}
}

