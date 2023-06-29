resource "azurerm_subnet" "subnets" {
  count                = local.subnet_count
  name                 = "subnet-${count.index}"
  address_prefixes     = [cidrsubnet(local.address_space, 8, count.index)] #8 est le nombre de bits pour le sous réseau, equivalent au /24
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = local.resource_group
}
