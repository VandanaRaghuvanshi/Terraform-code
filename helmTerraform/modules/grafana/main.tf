resource "kubernetes_namespace" "grafana" {
  metadata {
    name = var.grafana_namespace
  }
}

resource "helm_release" "grafana" {
  name        = var.grafana_name
  chart       = var.grafana_chart
  repository  = var.grafana_repository
  namespace   = var.grafana_namespace
  wait        = true
  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "replicas"
    value = "2"
  }
  depends_on = [
    kubernetes_namespace.grafana
  ]
}

