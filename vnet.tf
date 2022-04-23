module "rg1" {
  source            = "./Modules/ResourceGroup"
  resourcegroupname = var.rgname
  location          = var.location
}

module "nsg" {
  source            = "./Modules/Vnet"
  nsgname           = var.nsg_name
  location          = var.location
  resourcegroupname = var.rgname
  vnetname          = var.vnetname
}