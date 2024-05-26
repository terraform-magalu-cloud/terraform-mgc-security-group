provider "mgc" {
  region = "br-ne1"
}

module "example" {
  source      = "../"
  name        = var.name
  description = "SG test"
  rules = {
    http = {
      is_egress   = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 80
      port_max    = 80
      source_cidr = "192.168.0.0/24"
    }
    https = {
      is_egress   = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 443
      port_max    = 443
      source_cidr = "10.10.0.0/24"
    }
    altport = {
      is_egress   = true
      ipv         = 4
      protocol    = "tcp"
      port_min    = 1025
      port_max    = 65535
      source_cidr = "10.10.0.0/24"
    }
  }
}