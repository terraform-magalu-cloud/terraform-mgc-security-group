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
  ethertype         = "IPv${var.rules[count.index].ipv}"
  remote_ip_prefix  = var.rules[count.index].cidr
  protocol          = var.rules[count.index].protocol
  port_range_min    = var.rules[count.index].port_min
  port_range_max    = var.rules[count.index].port_max
}
