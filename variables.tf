variable "kubernetes_namespace" {
  type = string
  default = "kubernetes-dashboard"
  description = "Kubernetes namespace to deploy kubernetes dashboard controller."
}

variable "kubernetes_namespace_create" {
  type = bool
  default = true
  description = "Do you want to create kubernetes namespace?"
}

variable "kubernetes_resources_name_prefix" {
  type = string
  default = ""
  description = "Prefix for kubernetes resources name. For example `tf-module-`"
}

variable "kubernetes_resources_labels" {
  type = map(string)
  default = {}
  description = "Additional labels for kubernetes resources."
}

variable "kubernetes_deployment_image_registry" {
  type = string
  default = "kubernetesui/dashboard"
}

variable "kubernetes_deployment_image_tag" {
  type = string
  default = "v2.0.0-rc1"
}

variable "kubernetes_deployment_metrics_scraper_image_registry" {
  type = string
  default = "kubernetesui/metrics-scraper"
}

variable "kubernetes_deployment_metrics_scraper_image_tag" {
  type = string
  default = "v1.0.2"
}

variable "kubernetes_deployment_node_selector" {
  type = map(string)
  default = {
    "beta.kubernetes.io/os" = "linux"
  }
  description = "Node selectors for kubernetes deployment"
}

variable "kubernetes_service_account_name" {
  type = string
  default = "kubernetes-dashboard"
  description = "Kubernetes service account name."
}

variable "kubernetes_secret_certs_name" {
  type = string
  default = "kubernetes-dashboard-certs"
  description = "Kubernetes secret certs name."
}

variable "kubernetes_role_name" {
  type = string
  default = "kubernetes-dashboard"
  description = "Kubernetes role name."
}

variable "kubernetes_role_binding_name" {
  type = string
  default = "kubernetes-dashboard"
  description = "Kubernetes role binding name."
}

variable "kubernetes_deployment_name" {
  type = string
  default = "kubernetes-dashboard"
  description = "Kubernetes deployment name."
}

variable "kubernetes_service_name" {
  type = string
  default = "kubernetes-dashboard"
  description = "Kubernetes service name."
}

variable "kubernetes_ingress_name" {
  type = string
  default = "kubernetes-dashboard"
  description = "Kubernetes ingress name."
}

variable "kubernetes_dashboard_csrf" {
  type = string
  description = "CSRF token"
}
