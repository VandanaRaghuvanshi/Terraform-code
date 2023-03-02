resource "kubernetes_namespace" "prometheus" {
  metadata {
    name = var.prometheus_namespace
  }
}

resource "helm_release" "prometheus" {
  chart      = var.prometheus_chart
  name       = var.prometheus_name
  namespace  = var.prometheus_namespace
  repository = var.prometheus_repository
  version    = "15.5.3"

  set {
    name  = "server.persistentVolume.enabled"
    value = false
  }

  depends_on = [
    kubernetes_namespace.prometheus
  ]
}