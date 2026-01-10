# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Bug Fixes

* **outputs:** corrige o output `rules` para retornar a lista de regras criadas em vez de um valor vazio.
* **release:** corrige a ordenação das chaves no `.releaserc.json` para satisfazer o hook `pretty-format-json`.

### Code Refactoring

* **validation:** move a lógica de validação de `main.tf` para blocos `validation` nativos em `variables.tf`.
* **validation:** adiciona validação de comprimento para o nome do security group (mínimo 5 caracteres).
* **validation:** adiciona validação estrita para `ipv` (4 ou 6) e `protocol` (tcp, udp, icmp).

### Documentation

* **descriptions:** melhora as descrições das variáveis e outputs para maior clareza e profissionalismo.
## [upgrade]

* upgrade provider mgc from 0.37.0 to 0.41.1

## 1.0.0 (2024-05-26)


### Features

* add description example ([c33cc5b](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/c33cc5b5f52ee7c9f6bb078dd9e022b7a2c8bfc6))
* add readme ([8dbfdfe](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/8dbfdfed8b7272075663dcbc2dd6d4a1a3bf0c6d))
* convert to number the ports ([67c9857](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/67c9857c4a85f41720c8bca050cf025fdc4cb09f))
* core logic to create sg ([ab012ef](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/ab012ef691e16d03dd7f632a6c25c3acefb46472))
* draft security group ([6f703da](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/6f703daa6f6050540b134ac506134db1a83bd835))
* improv example code ([11009ed](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/11009ed152ca5e3c9c3cc3dec2f0dd3031314dea))
* improv output ([f60bbe0](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/f60bbe01782e0693209ce904ec2c9b94b15e31a7))
* insert description and rename outputs ([a96129a](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/a96129ae0668fd85e3dfe7e62460f092531ce849))
* some outputs ([c695e1d](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/c695e1d160a230f23c30c073367a95cef592a61e))
