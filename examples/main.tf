resource "azurerm_resource_group" "this" {
  name     = uuid()
  location = "westeurope"
}

module "bastion_host" {
  source              = "./module"
  name                = "MyBastionHost"
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  subnet_id           = "Mysubnet_ids_for_AzureBastionSubnet"
}
