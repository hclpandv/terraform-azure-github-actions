#----Creating a resourceGroup for network resources
# resource "azurerm_resource_group" "rgnetwork" {
#   name     = var.rg_network
#   location = var.location
# }


data "http" "example" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}