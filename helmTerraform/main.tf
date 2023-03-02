module "grafana" {
    source      = "./modules/grafana"
    grafana_name        = var.grafana_name
    grafana_repository  = var.grafana_repository
    grafana_chart       = var.grafana_chart
    grafana_namespace   = var.grafana_namespace
}

module "prometheus" {
    source      = "./modules/prometheus"
    prometheus_name        = var.prometheus_name
    prometheus_repository  = var.prometheus_repository
    prometheus_chart       = var.prometheus_chart
    prometheus_namespace   = var.prometheus_namespace

    depends_on = [
      module.grafana
    ]
}

resource "null_resource" "one-time" {
  triggers = {
    timestamp = local.timestamp
  }

  provisioner "local-exec" {
    when = create
    command = "rm -f top-* && top -b -n 2 > top-${local.timestamp}.txt"  
  }
}