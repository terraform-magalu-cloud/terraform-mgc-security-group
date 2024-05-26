resource "mgc_network_security_groups" "this" {
  count          = var.create ? 1 : 0
  name           = var.name
  description    = var.description
  validate_quota = true
}

resource "mgc_network_rules" "this" {
  depends_on        = [mgc_network_security_groups.this]
  for_each          = var.create ? var.rules : {}
  security_group_id = mgc_network_security_groups.this[0].id
  direction         = each.value.is_egress == false ? "ingress" : "egress"
  ethertype         = each.value.ipv == 4 || each.value.ipv == 6 ? "IPv${each.value.ipv}" : "ERRO: value not support, use only 4 or 6"
  remote_ip_prefix  = each.value.source_cidr
  protocol          = each.value.protocol == "tcp" || each.value.protocol == "udp" || each.value.protocol == "icmp" ? each.value.protocol : "ERRO: value not support, use only tcp, udp or icmp"
  port_range_min    = each.value.port_min
  port_range_max    = each.value.port_max
  validate_quota    = var.validate_quota
  wait              = var.wait
  # wait_timeout      = var.wait_timeout
}
