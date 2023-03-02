output "grafana_id" {
    description = "Id of the deployed helm chart" 
    value = module.grafana.id
}

output "prometheus_id" {
    description = "Id of the deployed helm chart" 
    value = module.prometheus.id
}