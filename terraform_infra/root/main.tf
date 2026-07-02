# thie is root directory to this landzind Zone ?

module "rg" {
  source = "../Plateform_landing_zone/modules/management"
  rgs = var.rgs
}

module "network" {
  depends_on = [ module.rg ]
  source = "../Plateform_landing_zone/modules/ALZ_Connectivity"
  connectivity = var.connectivity
}