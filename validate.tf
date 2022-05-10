#----Creating a resourceGroup for network resources
data "http" "example" {
  url = var.url_validation

  # Optional request headers
  request_headers = {
    Accept = "application/json"
    Authorization = "Bearer ${var.api_token}"
  }
}
