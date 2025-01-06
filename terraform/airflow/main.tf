# Create a Kubernetes namespace
resource "kubernetes_namespace" "dataplataform-lab-namespace" {
  metadata {
    annotations = {
      name = var.airflow_namespace
    }

    labels = {
      mylabel = var.airflow_namespace
    }

    name = var.airflow_namespace
  }
}