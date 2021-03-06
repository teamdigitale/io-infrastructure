output "azurerm_public_ip_ip_address" {
  description = "The public IP address of the VM."
  value       = "${var.public_ip ? join("", azurerm_public_ip.pip.*.ip_address) : "--"}"
}

output "azurerm_virtual_machine_os_profile_admin_username" {
  description = "The username to use to connect to the VM."
  value       = "${var.default_admin_username}"
}
