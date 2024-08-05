# Terraform module for Kubernetes Dashboard

> [!WARNING]  
> This module is no longer maintained.

This module deploys [Kubernetes Dashboard](https://github.com/kubernetes/dashboard) to your Kubernetes cluster.

## Usage

```terraform
provider "kubernetes" {
  # your kubernetes provider config
}

module "kubernetes_dashboard" {
  source = "cookielab/dashboard/kubernetes"
  version = "0.9.0"

  kubernetes_namespace_create = true
  kubernetes_dashboard_csrf = "<your-csrf-random-string>"
}
```
