# Create a Kind cluster
resource "kind_cluster" "dataplataform-lab-local" {
    name = "dataplataform-lab-local"
    wait_for_ready = true
    node_image = "kindest/node:v1.31.2"
    kind_config  {
        kind = "Cluster"
        api_version = "kind.x-k8s.io/v1alpha4"
        node {
            role = "control-plane"
            kubeadm_config_patches = [
              "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n"
            ]
            extra_port_mappings {
              container_port = 80
              host_port      = 80
            }
            extra_port_mappings {
                container_port = 443
                host_port      = 443
            }
        }
        node {
            role =  "worker"
        }
        node {
            role =  "worker"
        }
    }
}

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