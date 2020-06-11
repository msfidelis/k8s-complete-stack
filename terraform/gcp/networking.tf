  
resource "google_compute_network" "vpc_network" {
  name                    = format("%s-network", var.project_name)
  auto_create_subnetworks = "false"
  routing_mode            = var.network_routing_mode
}