
resource "azurerm_virtual_network""multiple"{
name = "${var.name}"
resource_group_name = "${var.resource_group}"
location = "${var.location}"
address_space=["10.0.0.0/16"]
count="${var.no_of_vnets == 2 ? 1 : 0}"
}

provider "azurerm" {
  features {}
}

# provider "azurerm" { 
#   version = ">= 1.25, < 1.26" 
# }
