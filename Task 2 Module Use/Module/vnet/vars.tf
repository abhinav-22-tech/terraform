variable "name" {
  description = "name of the vnet"
}

variable "resourcegroup" {
  description = "name of the resource group"
}

variable "location" {
  description = "name of the location"
}

variable "address" {
  type = list
  description = "specify the address"
}