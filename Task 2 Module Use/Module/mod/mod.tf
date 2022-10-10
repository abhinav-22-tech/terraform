module "child" {
  source = "../vnet"
  name = "modvnet"
  resourcegroup = "user-vcom"
  location = "eastus"
  address = "10.0.0.0/16"
}