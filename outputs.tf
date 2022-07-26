output "object" {
  depends_on  = [azurerm_bastion_host.this]
  value       = azurerm_bastion_host.this
  description = "Contains the bastion host resource"
}

output "name" {
  depends_on  = [azurerm_bastion_host.this]
  value       = azurerm_bastion_host.this.*.name
  description = "Specifies the name of the bastion host"
}

output "id" {
  depends_on  = [azurerm_bastion_host.this]
  value       = azurerm_bastion_host.this.*.id
  description = "Specifies the resource id of the bastion host"
}

output "fqdn" {
  depends_on  = [azurerm_bastion_host.this]
  value       = azurerm_bastion_host.this.dns_name
  description = "The FQDN for the Bastion Host"
}
