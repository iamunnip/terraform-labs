resource "kubernetes_namespace_v1" "kubernetes_namespace" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_secret_v1" "kubernetes_secret" {
  depends_on = [kubernetes_namespace_v1.kubernetes_namespace]
  metadata {
    name      = var.secret
    namespace = var.namespace
  }
  data = {
    "tls.crt" = data.vault_generic_secret.secret.data["tls.crt"]
    "tls.key" = data.vault_generic_secret.secret.data["tls.key"]
  }
}
