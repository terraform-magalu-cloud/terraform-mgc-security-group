provider "mgc" {
  api_key = var.api_key
  region  = "br-ne1"
}

module "example" {
  source      = "../"
  name        = "${var.name}-teste"
  description = "SG test"
  rules = [
    {
      description = ""
      egress      = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 80
      port_max    = 80
      cidr        = "192.168.0.0/24"
    },
    {
      description = ""
      egress      = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 443
      port_max    = 443
      cidr        = "10.10.0.0/24"
    },
    {
      description = ""
      egress      = true
      ipv         = 4
      protocol    = "tcp"
      port_min    = 1025
      port_max    = 65535
      cidr        = "10.10.0.0/24"
    }
  ]
}