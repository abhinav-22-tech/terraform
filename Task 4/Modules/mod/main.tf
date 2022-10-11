module "vnet" {
  source = "../vnet"
}

resource "azurerm_virtual_network" "myvnet" {
  name = "${var.name}"
  location = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  address_space = ["10.0.0.0/16"]
}

