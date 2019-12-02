locals {
  kubernetes_resources_labels = merge({
    "cookielab.io/terraform-module" = "kube-dashboard",
  }, var.kubernetes_resources_labels)

  kubernetes_deployment_labels_selector = {
    "cookielab.io/application" = "kubernetes-dashboard",
    "cookielab.io/process" = "bootstrap",
    "cookielab.io/unit" = "dashboard",
  }

  kubernetes_deployment_labels_selector_metrics = {
    "cookielab.io/application" = "kubernetes-dashboard",
    "cookielab.io/process" = "bootstrap",
    "cookielab.io/unit" = "metrics-scraper",
  }

  kubernetes_deployment_labels = merge(local.kubernetes_deployment_labels_selector, local.kubernetes_resources_labels)
  kubernetes_deployment_labels_metrics = merge(local.kubernetes_deployment_labels_selector_metrics, local.kubernetes_resources_labels)

  kubernetes_deployment_image = "${var.kubernetes_deployment_image_registry}:${var.kubernetes_deployment_image_tag}"
  kubernetes_deployment_metrics_scraper_image = "${var.kubernetes_deployment_metrics_scraper_image_registry}:${var.kubernetes_deployment_metrics_scraper_image_tag}"
}