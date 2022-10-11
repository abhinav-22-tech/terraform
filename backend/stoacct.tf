provider "azurerm" {
  features{
  }
}

resource "azurerm_storage_account""storageaccount" {
  name = "storageaccountname"
  resource_group_name = "${var.resourcegroup}"
  location = "${var.location}"
  account_tier = "${var.accounttier}"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
