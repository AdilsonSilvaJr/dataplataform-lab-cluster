variable "cluster_name" {
  description = "Name of the Kind cluster"
  type        = string
  default     = "kind-cluster"
}
variable "airflow_namespace" {
  description = "Name of airflow namespace"
  type        = string
  default     = "airflow"
}