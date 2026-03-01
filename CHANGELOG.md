# Changelog

All notable changes to this project will be documented in this file.

All notable changes to this project will be documented in this file.

## [2.0.0] - 2026-03-01

### Breaking Changes

* **state:** Refatoração do recurso `mgc_network_security_groups_rules` para utilizar `for_each`. Isso altera o endereço dos recursos no state e causará a recriação de regras existentes.
* **requirements:** Elevada a versão mínima do Terraform para `1.11.1` e do provedor MGC para `0.45.0`.
* **validation:** A variável `name` agora exige um comprimento mínimo de 5 caracteres.

### Features

* **validation:** Adicionada validação robusta para regras de segurança, incluindo versão de IP (4 ou 6), protocolos permitidos (tcp, udp, icmp, all), consistência de intervalos de portas e formato CIDR.
* **integrity:** Adicionado bloco `terraform_data` com `precondition` para evitar a inserção de regras duplicadas na lista de entrada.
* **dx:** Melhoria nas mensagens de erro de validação para facilitar o debug pelo usuário do módulo.

### Maintenance

* **ci:** Atualização dos hooks de `pre-commit` e inclusão de regras estritas de `tflint`.
* **docs:** Atualização do README com os novos requisitos e tipos de dados.


## [1.4.0](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/compare/v1.3.0...v1.4.0) (2026-02-23)


### Features

* define provider requirements and terraform version and upgrade ([f2b2fbe](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/f2b2fbef9c0bb6a4ee1458a009884de51e54a59b))

## [1.4.0](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/compare/v1.3.0...v1.4.0) (2026-02-22)

### Features

* define Terraform version and upgrade provider to 0.44.x

## [1.3.0](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/compare/v1.2.0...v1.3.0) (2026-01-10)


### Bug Fixes

* **outputs:** corrige o output `rules` para retornar a lista de regras criadas em vez de um valor vazio.
* **release:** corrige a ordenação das chaves no `.releaserc.json` para satisfazer o hook `pretty-format-json`.

### Code Refactoring

* **validation:** move a lógica de validação de `main.tf` para blocos `validation` nativos em `variables.tf`.
* **validation:** adiciona validação de comprimento para o nome do security group (mínimo 5 caracteres).
* **validation:** adiciona validação estrita para `ipv` (4 ou 6) e `protocol` (tcp, udp, icmp).

### Documentation

* **descriptions:** melhora as descrições das variáveis e outputs para maior clareza e profissionalismo.

### Upgrade

* **provider:** Upgrade provider mgc version 0.37.0 to 0.41.1.



## [1.2.0](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/compare/v1.1.0...v1.2.0) (2025-09-27)


### Features

* upgrade version and improv example ([c8bcee5](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/c8bcee5f48fe345d8da93fd385fa73747c9b8e0d))


### Bug Fixes

* ajuste nos valores dos parâmetros ([ad81ae6](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/ad81ae67df2f7323d403ea201cc0414b9a5858f1))
* job variable ([7a15c52](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/7a15c5268dfa95852ee5af43c86c47d369667a36))
* version random ([86a5548](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/86a55488890a1fb775fb0ba28720ae0fb21a4b31))

## [1.1.0](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/compare/v1.0.0...v1.1.0) (2025-04-22)


### Features

* add env ([4ba6d6d](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/4ba6d6d7f1ead52ba28a9ce9547412bbfcfc7cd4))
* add telegram notify ([d548aec](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/d548aec8de2eccf52372b5c74faa3e0e589ca88c))
* improvment actions to publish in telegram ([1ec55e2](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/1ec55e207253d6c5e889f58aa949245b1b8a56ff))
* re-enable validate PR ([16939ca](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/16939ca13f86d67412958e07edbaf98df4e31301))
* update docs this modules+ ([55e7f5a](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/55e7f5a27665347b4fcbfdab9db2618e2c9142c0))
* upgrade version pre-commit ([85db982](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/85db9821bb156ac723c6040def900674b7a0be71))
* upgrade version terraform mgc ([2aedb3a](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/2aedb3a46b5ce7bcd38c25799ad10de5864907d4))


### Bug Fixes

* add improv like tike type ([e093da7](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/e093da78922aba124242fd5594bfa388a3dd92b1))
* fix problem that recreate alway rules the security group ([3ee7a47](https://github.com/terraform-magalu-cloud/terraform-mgc-security-group/commit/3ee7a47be707df9ccb3488b5aecff9c30c76f6dc))

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
