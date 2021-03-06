resource "azurerm_app_service_plan" "appServicePlan" {
  name                      = var.AppServicePlanName
  location                  = var.ResourceGroupLocation
  resource_group_name       = azurerm_resource_group.cougar.name
  kind                      = var.AppServicePlanKind
  reserved                  = lower(var.AppServicePlanKind) == "linux" ? true : false

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}
