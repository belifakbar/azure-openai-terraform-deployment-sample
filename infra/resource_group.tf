resource "azurerm_resource_group" "this" {
  location = var.region
  name     = "azure-openai-terraform-deployment-${var.region}"
  
  tags = merge(var.common_tags, {
    Resource = "Resource Group"
  })
}