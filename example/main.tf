provider "mgc" {
  api_key = var.api_key
  region  = "br-ne1"
}

resource "random_string" "sufix" {
  length = 12
  special = false
  min_lower = 3
  min_upper = 3
  min_numeric = 3
}

module "example" {
  source      = "../"
  name        = "${var.name}-teste-${random_string.sufix.result}"
  description = "SG test"
  rules = [
    {
      description = "Acesso ao serviço http"
      egress      = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 80
      port_max    = 80
      cidr        = "192.168.0.0/24"
    },
    {
      description = "Acesso ao serviço https"
      egress      = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 443
      port_max    = 443
      cidr        = "10.10.0.0/24"
    },
    {
      description = "Liberado a qualquer serviço da rede internta porta alta"
      egress      = true
      ipv         = 4
      protocol    = "tcp"
      port_min    = 1025
      port_max    = 65535
      cidr        = "10.10.0.0/24"
    }
  ]
}