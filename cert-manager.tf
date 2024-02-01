resource "helm_release" "issuer" {
  name         = "issuer"
  chart        = "./issuer"
  depends_on   = [kubernetes_namespace.namespace]
  force_update = true
  version      = var.build_number
  namespace    = var.pod_namespace

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/issuer/templates/cert-issuer-nginx-ingress.yaml")
  }
  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/issuer/Chart.yaml")
  }
  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/issuer/values.yaml")
  }

  values = [templatefile("${path.module}/issuer/values.yaml", { env_domain = var.env_domain, azure_subscription_id = var.azure_subscription_id, azure_dns_rg = var.azure_dns_rg, azure_dns_zone = var.azure_dns_zone, aks_managed_identity_client_id = var.aks_managed_identity_client_id })]
}

resource "helm_release" "cert" {
  name         = "cert"
  chart        = "./cert"
  depends_on   = [kubernetes_namespace.namespace]
  force_update = true
  version      = var.build_number
  namespace    = var.pod_namespace

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/cert/templates/certificate.yaml")
  }

  set {
    name  = "valueChecksum"
    value = filemd5("${path.module}/cert/values.yaml")
  }

  values = [templatefile("${path.module}/cert/values.yaml", { env_domain = var.env_domain })]
}
