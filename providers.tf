
terraform {
  backend "azurerm" {
    resource_group_name  = "PROD-PRS-GlowAKS"
    storage_account_name = "prodtfstate27684"
    container_name       = "tfstate"
    key                  = "nginx_settings_insurance_insuat.tfstate"
  }
}


terraform {
  required_version = ">= 0.15.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.62.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.1.2"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.3.1"
    }

  }
}

provider "azurerm" {
  features {}
}

/*
provider "kubernetes" {
  host                   = data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.host
  client_key             = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.client_key)
  client_certificate     = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.client_certificate)
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.cluster_ca_certificate)
}



provider "helm" {
  kubernetes {
    host                   = data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.host
    client_key             = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.client_key)
    client_certificate     = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.client_certificate)
    cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.cluster_ca_certificate)
  }
}
*/


provider "kubernetes" {
  config_path    = "~/.kube/config"
}

/*
provider "kubernetes" {
//  host                   = data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.host
//  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_admin_config.0.cluster_ca_certificate)
  config_path    = "~/.kube/config"
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "kubelogin"
    args = [
      "get-token",
      "--login",
      "azurecli", # spn if you want to use service principal, but requires use of env vars AAD_SERVICE_PRINCIPAL_CLIENT_ID and AAD_SERVICE_PRINCIPAL_CLIENT_SECRET
      "--environment",
      "AzurePublicCloud",
      "--tenant-id",
      "c5360f6f-0bb5-46b9-a278-75619bfd2434",
      "--server-id",
      "6dae42f8-4368-4678-94ff-3960e28e3630",
      "|",
      "jq",
      ".status.token"
    ]
  }
}
*/
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
