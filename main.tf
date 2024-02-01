data "azurerm_kubernetes_cluster" "cluster" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
}

resource "kubernetes_namespace" "namespace" {
  count = var.aks_namespace ? 1 : 0
  metadata {
    annotations = {
      name = var.pod_namespace
    }
    name = var.pod_namespace
  }
}
