provider "mgc" {
  api_key = var.api_key
  region  = "br-ne1"
}

resource "random_string" "sufix" {
  length      = 12
  special     = false
  min_lower   = 4
  min_upper   = 4
  min_numeric = 4
}

module "example" {
  source      = "../"
  name        = "${var.name}-${random_string.sufix.result}"
  description = "SG test example"
  rules = [
    {
      description = "Acesso ao serviço http"
      egress      = false
      ipv         = 4
      protocol    = "tcp"
      port_min    = 80
      port_max    = 80
      cidr        = "0.0.0.0/0"
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

resource "mgc_network_security_groups_rules" "ssh_exposed" {
  direction         = "ingress"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0" # VIOLAÇÃO
  security_group_id = module.example.id
  ethertype         = "IPv4"
}
