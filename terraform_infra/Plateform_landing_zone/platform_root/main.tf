module "rg" {
  source = "../Plateform_landing_zone/management"
  rgs    = var.rgs
}

module "vne" {
  depends_on = [ module.rg ]
  source = "../Plateform_landing_zone/hub-network"
  hvet   = var.hvet
}

module "sb" {
  depends_on = [ module.vne ]
  source = "../Plateform_landing_zone/Hub_subnets"
  hsubnet = var.hsubnet

}
