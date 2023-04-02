resource "kubernetes_namespace" "services" {
  metadata {
    name = "services"
  }
}

resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx"
    namespace = kubernetes_namespace.services.metadata[0].name
  }

  spec {
    selector {
      match_labels = {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }

      spec {
        container {
          name = "nginx"
          image = "nginx:latest"
        }
      }
    }
  }
}

resource "kubernetes_service" "nginx" {
  metadata {
    name = "nginx"
    namespace = kubernetes_namespace.services.metadata[0].name
  }

  spec {
    selector = {
      app = "nginx"
    }

    type = "LoadBalancer"
    port {
      port = 80
      target_port = 80
    }
  }
}
