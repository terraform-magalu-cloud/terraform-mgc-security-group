provider "mgc" {
  region = "br-ne1"
}


module "example" {
  source = "../"
  name   = var.name
  rules = {
    http80 = {
      is_egress   = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 80
      port_max    = 8080
      source_cidr = "192.168.0.0/24"
    }
    http8 = {
      is_egress   = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 80
      port_max    = 8080
      source_cidr = "10.10.0.0/24"
    }
    http9 = {
      is_egress   = true
      ipv         = 4
      protocol    = "tcp"
      port_min    = 80
      port_max    = 8080
      source_cidr = "10.10.0.0/24"
    }
  }
}