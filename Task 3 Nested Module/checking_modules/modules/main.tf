module "vnet" {
  source = "../virtual_network"
  name = "mymodvnet"
}
module "stoacct" {
  source = "../storage_account"
  name = "mymodstorageaccount"
}