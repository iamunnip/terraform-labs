provider "kubernetes" {
  config_path    = var.kubernetes_config_path
  config_context = var.kubernetes_config_context
}

provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}
