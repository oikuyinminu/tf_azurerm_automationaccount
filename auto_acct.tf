# Create an Automation Account for every LAW
resource "azurerm_automation_account" "auto_acct" {
    
  name                = local.auto_account_name
  location            = var.location 
  resource_group_name = var.resource_group_name

  sku_name            = var.sku_name

}
