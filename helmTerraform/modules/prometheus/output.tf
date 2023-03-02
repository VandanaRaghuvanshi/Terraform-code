output "chart" {
    description = "The name of the chart."
    value       = helm_release.prometheus.chart
}

output "status" {
    description = "The name of the chart."
    value       = helm_release.prometheus.status
}

output "id" {
    description = "The name of the chart."
    value       = helm_release.prometheus.id
}