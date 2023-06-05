provider "kubernetes" {
  config_path    = "./config"
  config_context = "kubernetes-admin@kubernetes"
}

resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace 
  }
}

resource "kubernetes_pod_v1" "pod" {
  metadata {
    name = var.pod_name
    namespace = kubernetes_namespace.namespace.id
  }
  spec {
    container {
      image = var.image
      name = var.pod_name
    }
  }
}