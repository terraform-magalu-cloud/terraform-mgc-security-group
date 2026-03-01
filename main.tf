resource "mgc_network_security_groups" "this" {
  count       = var.create ? 1 : 0
  name        = var.name
  description = var.description
}

resource "terraform_data" "validate_rules" {
  lifecycle {
    precondition {
      condition     = length(var.rules) == length(distinct(var.rules))
      error_message = "Erro: Foram encontradas regras de segurança idênticas na variável 'rules'. Por favor, remova as duplicatas."
    }
  }
}
resource "mgc_network_security_groups_rules" "this" {
  # Criamos um mapa com chaves únicas para o for_each
  for_each = var.create ? {
    for index, r in var.rules : "Egress-${r.egress}-${"ipv${r.ipv}"}-${r.port_min}-${r.port_max}-${replace(replace(r.cidr, ".", "-"), "/", "-")}" => r
    if r.egress != null
  } : {}

  depends_on = [mgc_network_security_groups.this]

  description       = each.value.description
  security_group_id = mgc_network_security_groups.this[0].id

  direction        = each.value.egress == false ? "ingress" : "egress"
  ethertype        = "IPv${each.value.ipv}"
  remote_ip_prefix = each.value.cidr
  protocol         = each.value.protocol

  # Usando tonumber() em vez de int()
  port_range_min = tonumber(each.value.port_min)
  port_range_max = tonumber(each.value.port_max)

}
