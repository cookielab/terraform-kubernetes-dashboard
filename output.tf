output "kubernetes_dashboard_service_name" {
  value = kubernetes_service.kubernetes_dashboard.metadata.0.name
}

output "kubernetes_dashboard_service_namespace" {
  value = kubernetes_service.kubernetes_dashboard.metadata.0.namespace
}

output "kubernetes_metrics_scraper_service_name" {
  value = kubernetes_service.kubernetes_metrics_scraper.metadata.0.name
}

output "kubernetes_metrics_scraper_service_namespace" {
  value = kubernetes_service.kubernetes_metrics_scraper.metadata.0.namespace
}
