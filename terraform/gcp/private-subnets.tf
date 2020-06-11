resource "google_compute_subnetwork" "private_subnet1a" {
  name          =  format("private-subnet-%sa", var.project_region)
  ip_cidr_range = var.private_subnet_1a
  network       = google_compute_network.vpc_network.self_link
  region        = var.project_region
}


resource "google_compute_subnetwork" "private_subnet1b" {
  name          =  format("private-subnet-%sb", var.project_region)
  ip_cidr_range = var.private_subnet_1b
  network       = google_compute_network.vpc_network.self_link
  region        = var.project_region
}