output "id" {
    description = "Id of the deployed helm chart" 
    value = helm_release.grafana.id
}