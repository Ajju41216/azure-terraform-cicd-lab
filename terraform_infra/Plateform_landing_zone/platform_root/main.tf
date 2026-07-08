module "rg" {
  source = "../management"
  rgs = var.rgs
}

module "vne" {
  depends_on = [ module.rg ]
  source = "../hub-network"
  hvet   = var.hvet
}

module "sb" {
  depends_on = [ module.vne ]
  source = "../Hub_subnets"
  hsubnet = var.hsubnet

}
