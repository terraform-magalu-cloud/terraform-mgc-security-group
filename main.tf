resource "mgc_network_security_groups" "this" {
  count       = var.create ? 1 : 0
  name        = var.name
  description = var.description
}

resource "mgc_network_security_groups_rules" "this" {
  count             = var.create ? length(var.rules) : 0
  depends_on        = [mgc_network_security_groups.this]
  description       = var.rules[count.index].description
  security_group_id = mgc_network_security_groups.this[0].id
  direction         = var.rules[count.index].egress == false ? "ingress" : "egress"
  ethertype         = tonumber(var.rules[count.index].ipv) == 4 || var.rules[count.index].ipv == 6 ? "IPv${var.rules[count.index].ipv}" : "ERRO: value not support, use only 4 or 6"
  remote_ip_prefix  = var.rules[count.index].cidr
  protocol          = var.rules[count.index].protocol == "tcp" || var.rules[count.index].protocol == "udp" || var.rules[count.index].protocol == "icmp" ? var.rules[count.index].protocol : "ERRO: value not support, use only tcp, udp or icmp"
  port_range_min    = tonumber(var.rules[count.index].port_min)
  port_range_max    = tonumber(var.rules[count.index].port_max)
}