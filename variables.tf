#####    Credentials

variable "client_id" {
  default = ""
}
variable "subscription_id" {
  default = ""
}
variable "tenant_id" {
  default = ""
}
variable "client_secret" {
  default = ""
}

variable "storage_account_name" {
  default = "prodtstate32422"
}

variable "storage_access_key" {
  default = ""
}

variable "build_number" {
  default = ""
}

variable "valueChecksum" {
  default = ""
}

variable "stateChecksum" {
  default = ""
}



variable "cluster_name" {
  default = "glow-insurance-aks"
}

variable "resource_group_name" {
  default = "InsuranceRG"
}

variable "pod_namespace" {
  description = "Pod namespace. Use in cert, configmaps, ingress_config modules"
  default     = "insuat"
  type        = string
}

variable "env_domain" {
  description = "Env for domain url"
  default     = "insuat"
  type        = string
}


#######   Names of certificates
variable "calc" {
  description = "Var name of calc"
  default     = "calc"
  type        = string
}

variable "glowapi" {
  description = "Var name of glowapi"
  default     = "glowapi"
  type        = string
}

variable "loanapi" {
  description = "Var name of loanapi"
  default     = "loanapi"
  type        = string
}

variable "paymentui" {
  description = "Var name of paymentui"
  default     = "paymentui"
  type        = string
}

variable "loanui" {
  description = "Var name of loanui"
  default     = "loanui"
  type        = string
}

variable "glowui" {
  description = "Var name of glowui"
  default     = "glowui"
  type        = string
}

variable "demo_back" {
  description = "Var name of demo-back"
  default     = "demo-back"
  type        = string
}

variable "demo_ui" {
  description = "Var name of demo-ui"
  default     = "demo-ui"
  type        = string
}

variable "signalr" {
  description = "Var name of signalr"
  default     = "signalr"
  type        = string
}

variable "bankapi" {
  description = "Var name of bankapi"
  default     = "bankapi"
  type        = string
}

variable "querytool" {
  description = "Var name of querytool"
  default     = "querytool"
  type        = string
}

variable "cmspreview" {
  description = "Var name of cmspreview"
  default     = "cmspreview"
  type        = string
}

variable "strapi" {
  description = "Var name of strapi"
  default     = "strapi"
  type        = string
}

variable "insclientportal_api" {
  description = "Var name of insclientportal-api"
  default     = "insclientportal-api"
  type        = string
}

variable "insclientportal_ui" {
  description = "Var name of insclientportal-ui"
  default     = "insclientportal-ui"
  type        = string
}

variable "rebuilderui" {
  description = "Var name of rebuilderui"
  default     = "rebuilderui"
  type        = string
}

variable "reexecutionui" {
  description = "Var name of reexecutionui"
  default     = "reexecutionui"
  type        = string
}

variable "rebuilderapi" {
  description = "Var name of rebuilderapi"
  default     = "rebuilderapi"
  type        = string
}

variable "reexecutionapi" {
  description = "Var name of reexecutionapi"
  default     = "reexecutionapi"
  type        = string
}

variable "recalculationapi" {
  description = "Var name of recalculationapi"
  default     = "recalculationapi"
  type        = string
}


variable "aks_managed_identity_client_id" {
  description = "aks_managed_identity_client_id"
  default     = "0c95e2f5-3230-41e8-b477-85ef0204a882"
  type        = string
}

variable "azure_subscription_id" {
  description = "azure_subscription_id"
  default     = "65de260e-4df4-4b57-9aa6-726e772d3246"
  type        = string
}

variable "azure_dns_rg" {
  description = "azure_dns_rg"
  default     = "rg-uk-south"
  type        = string
}

variable "azure_dns_zone" {
  description = "azure_dns_zone"
  default     = "glowfinsvs.com"
  type        = string
}



variable "prefix" {
  description = "The prefix for the resources created in the specified Azure Resource Group"
  default     = ""
  type        = string
}

variable "create_localization_ingress" {
  description = "If true the localization ingress config will be created"
  default     = false
}

variable "insurance_env" {
  description = "If true the insurtech ingress config will be created"
  default     = true
}

variable "cportaldev_env" {
  description = "If true the insurtech ingress config will be created"
  default     = true
}

variable "rulesengine_env" {
  description = "If true the insurtech ingress config will be created"
  default     = false
}

variable "gloworigin_env" {
  description = "If true the insurtech ingress config will be created"
  default     = true
}

variable "rabbitmq_ingress" {
  description = "If true the rabbitmq ingress config will be created"
  default     = false
}

variable "aks_namespace" {
  description = "If true the aks namespace will be created"
  default     = true
}
