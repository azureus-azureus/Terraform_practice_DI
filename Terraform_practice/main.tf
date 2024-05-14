resource "azurerm_resource_group" "rgroup" {
  for_each = var.rgroup
  name     = each.value.rgroup1
  location = each.value.location
}


resource "azurerm_virtual_network" "vnet" {
  depends_on          = [azurerm_resource_group.rgroup]
  for_each            = var.vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space


  dynamic "subnet" {
    for_each = each.value.subnets

    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
    }

  }



}
