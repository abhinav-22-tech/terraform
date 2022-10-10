provider "azurerm"{
  features {}
}

resource "azurerm_virtual_network""vnet"{
  name = "${var.name}"
  address_space = ["10.0.0.0/16"]
  resource_group_name = "${var.resourcegroup}"
  location = "${var.location}"
}