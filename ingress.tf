resource "helm_release" "ingress_config" {
  count        = var.gloworigin_env ? 1 : 0
  name         = "ingressconfig"
  namespace    = var.pod_namespace
  depends_on   = [kubernetes_namespace.namespace, helm_release.cert]
  chart        = "./ingress_config"
  force_update = true
  version      = var.build_number

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/ingress_config/templates/ingress_config.yaml")
  }

  set {
    name  = "valueChecksum"
    value = filemd5("${path.module}/ingress_config/values.yaml")
  }

  values = [templatefile("${path.module}/ingress_config/values.yaml", { calc = var.calc,
    glowapi = var.glowapi, loanapi = var.loanapi, paymentui = var.paymentui,
  loanui = var.loanui, glowui = var.glowui, demo_back = var.demo_back, demo_ui = var.demo_ui, signalr = var.signalr, bankapi = var.bankapi, querytool = var.querytool, env_domain = var.env_domain })]


}

resource "helm_release" "ingress_config_cportaldev" {
  count        = var.cportaldev_env ? 1 : 0
  name         = "ingressconfig-cportaldev"
  namespace    = var.pod_namespace
  depends_on   = [kubernetes_namespace.namespace, helm_release.cert]
  chart        = "./ingress_config_cportaldev"
  force_update = true
  version      = var.build_number

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/ingress_config_cportaldev/templates/ingress_config_cportaldev.yaml")
  }

  set {
    name  = "valueChecksum"
    value = filemd5("${path.module}/ingress_config_cportaldev/values.yaml")
  }

  values = [templatefile("${path.module}/ingress_config_cportaldev/values.yaml", { env_domain = var.env_domain, insclientportal_ui = var.insclientportal_ui, insclientportal_api = var.insclientportal_api })]


}

resource "helm_release" "ingress_config_localization" {
  count        = var.create_localization_ingress ? 1 : 0
  name         = "ingressconfig-localization"
  namespace    = var.pod_namespace
  depends_on   = [kubernetes_namespace.namespace, helm_release.cert]
  chart        = "./ingress_config_localization"
  force_update = true
  version      = var.build_number

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/ingress_config_localization/templates/ingress_config_localization.yaml")
  }

  set {
    name  = "valueChecksum"
    value = filemd5("${path.module}/ingress_config_localization/values.yaml")
  }

  values = [templatefile("${path.module}/ingress_config_localization/values.yaml", { env_domain = var.env_domain, cmspreview = var.cmspreview, strapi = var.strapi })]


}

resource "helm_release" "ingress_config_swagger" {
  count        = var.create_localization_ingress ? 1 : 0
  name         = "ingressconfig-swagger"
  namespace    = var.pod_namespace
  depends_on   = [kubernetes_namespace.namespace, helm_release.cert]
  chart        = "./ingress_config_swagger"
  force_update = true
  version      = var.build_number

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/ingress_config_swagger/templates/ingress_config_swagger.yaml")
  }

  set {
    name  = "valueChecksum"
    value = filemd5("${path.module}/ingress_config_swagger/values.yaml")
  }

  values = [templatefile("${path.module}/ingress_config_swagger/values.yaml", { env_domain = var.env_domain, glowapi = var.glowapi })]


}


resource "helm_release" "ingress_config_insurance" {
  count        = var.insurance_env ? 1 : 0
  name         = "ingressconfig-insurance"
  namespace    = var.pod_namespace
  depends_on   = [kubernetes_namespace.namespace, helm_release.cert]
  chart        = "./ingress_config_insurtech"
  force_update = true
  version      = var.build_number

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/ingress_config_insurtech/templates/ingress_config_insurtech.yaml")
  }

  set {
    name  = "valueChecksum"
    value = filemd5("${path.module}/ingress_config_insurtech/values.yaml")
  }

  values = [templatefile("${path.module}/ingress_config_insurtech/values.yaml", { env_domain = var.env_domain, insclientportal_ui = var.insclientportal_ui, insclientportal_api = var.insclientportal_api })]

}


resource "helm_release" "ingress_config_rulesengine" {
  count        = var.rulesengine_env ? 1 : 0
  name         = "ingressconfig-rulesengine"
  namespace    = var.pod_namespace
  depends_on   = [kubernetes_namespace.namespace, helm_release.cert]
  chart        = "./ingress_config_rulesengine"
  force_update = true
  version      = var.build_number

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/ingress_config_rulesengine/templates/ingress_config_rulesengine.yaml")
  }

  set {
    name  = "valueChecksum"
    value = filemd5("${path.module}/ingress_config_rulesengine/values.yaml")
  }

  values = [templatefile("${path.module}/ingress_config_rulesengine/values.yaml", { env_domain = var.env_domain, rebuilderui = var.rebuilderui, reexecutionui = var.reexecutionui, rebuilderapi = var.rebuilderapi, reexecutionapi = var.reexecutionapi, recalculationapi = var.recalculationapi })]

}

resource "helm_release" "ingress_config_rabbitmq" {
  count        = var.rabbitmq_ingress ? 1 : 0
  name         = "ingressconfig-rabbitmq"
  namespace    = var.pod_namespace
  depends_on   = [kubernetes_namespace.namespace, helm_release.cert]
  chart        = "./ingress_config_rabbitmq"
  force_update = true
  version      = var.build_number

  set {
    name  = "stateChecksum"
    value = filemd5("${path.module}/ingress_config_rabbitmq/templates/ingress_config_rabbitmq.yaml")
  }

  set {
    name  = "valueChecksum"
    value = filemd5("${path.module}/ingress_config_rabbitmq/values.yaml")
  }

  values = [templatefile("${path.module}/ingress_config_rabbitmq/values.yaml", { env_domain = var.env_domain })]


}