

module "rg" {
  source = "../application_landing_zone/management"
  spoke_rgs = var.spoke_rgs
}

module "spokenetwork" {
  depends_on = [ module.rg ]
  source = "../application_landing_zone/spoke_network"
  spoke_vnet = var.spoke_vnet
  }

module "spoke_subnet" {
  depends_on = [ var.spoke_vnet ]
  source = "../application_landing_zone/spoke_subnet"
  spoke_subnet = var.spoke_subnet
}
