```
$ terraform plan
data.vault_generic_secret.secret: Reading...
data.vault_generic_secret.secret: Read complete after 0s [id=kv/vault-agent-injector/tls-certs/dev]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # kubernetes_namespace_v1.kubernetes_namespace will be created
  + resource "kubernetes_namespace_v1" "kubernetes_namespace" {
      + id                               = (known after apply)
      + wait_for_default_service_account = false

      + metadata {
          + generation       = (known after apply)
          + name             = "vault"
          + resource_version = (known after apply)
          + uid              = (known after apply)
        }
    }

  # kubernetes_secret_v1.kubernetes_secret will be created
  + resource "kubernetes_secret_v1" "kubernetes_secret" {
      + binary_data_wo                 = (write-only attribute)
      + data                           = (sensitive value)
      + data_wo                        = (write-only attribute)
      + id                             = (known after apply)
      + type                           = "Opaque"
      + wait_for_service_account_token = true

      + metadata {
          + generation       = (known after apply)
          + name             = "injector-tls"
          + namespace        = "vault"
          + resource_version = (known after apply)
          + uid              = (known after apply)
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.
```
