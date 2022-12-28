resource "random_pet" "this" {
  length    = 2  # using 2, since default separator is '-', also account name can only be 24 characters, and lowercase letters
  separator = "" # a blank string separator because azure storage accounts dont support - characters
}



module "resource_group" {
  source   = "../../modules/rg"
  rg_name  = var.rg_name
  location = var.location
}


module "storage_account" {
  source                    = "../../modules/sa"
  name                      = "sa${random_pet.this.id}"
  resource_group_name       = module.resource_group.name
  location                  = module.resource_group.location
  enable_https_traffic_only = var.enable_https_traffic_only
}
