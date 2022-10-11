output "storageacctname" {
  value = azurerm_storage_account.storageaccount.name
}

# output "storageacctcontainer" {
#   value = azurerm_storage_account.storagecontainer.name
# }

output "access_key" {
  sensitive = true
  value = azurerm_storage_account.storageaccount.primary_access_key
}