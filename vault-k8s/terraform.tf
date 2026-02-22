terraform {
  required_version = "1.14.5"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 5"
    }
  }
}
