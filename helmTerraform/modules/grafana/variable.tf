variable "grafana_name" {
description = "release name"
type = string
}

variable "grafana_repository" {
 description = "Repository URL where to locate the requested chart." 
 type = string
 }

 variable "grafana_chart" {
 description = "Chart name to be installed" 
 type = string
 }

 variable "grafana_namespace" {
 description = "The namespace to install the release into" 
 type = string
 }
