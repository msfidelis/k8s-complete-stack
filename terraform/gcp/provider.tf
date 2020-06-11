provider "google" {
  credentials = file("../../serviceaccount.json")
  region      = var.project_region
  project = "cncf-280014"
}