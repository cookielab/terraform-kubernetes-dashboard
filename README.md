# Terraform module for Kubernetes Dashboard

This module deploys [Kubernetes Dashboard](https://github.com/kubernetes/dashboard) to your Kubernetes cluster.

## Usage

```terraform
provider "kubernetes" {
  config_path = "../1-master/kubeconfig_kube-first"
}

module "kubernetes_dashboard" {
  source = "git::https://github.com/cookielab/tf-kube-module-kubernetes-dashboard.git?ref=0.9.0"

  kubernetes_namespace_create = true
  kubernetes_dashboard_csrf = "<your-csrf-random-string>"
}
```
