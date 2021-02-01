terraform {
  required_version = ">= 0.13.0, < 0.15.0"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 1.13.0"
    }
  }
}
