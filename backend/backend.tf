terraform {
  backend "azurerm"{
    storage_account_name = "storageacct21"
    container_name = "mycontainer"
    key = "terraform.tfstate.change"
    resource_group_name = "userabcd"
    access_key = "aJlf+XjZhxwRp4gsU4hkGrQJzO7xBzz7B9rSzMLB/ozwcM6k/1N.......=="
  }
}