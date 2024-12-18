terraform {
  required_providers {
    kind = {
      source = "tehcyx/kind"
      version = "0.7.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.34.0"
    }
  }
}

provider "kind" {
  # Configuration options
}

provider "kubernetes" {
  config_path = "~/.kube/config" # Ensure Kind writes the config here
}
