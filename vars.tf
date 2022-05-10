#-------------------------------------
# vars for Resource Groups
#-------------------------------------
variable "rg_network" {
  type        = string
  description = "rg name for network resources"
  default     = "rg-topgun-landingzone-weu-01"
}
variable "rg_server" {
  type        = string
  description = "rg name for VMs"
  default     = "rg-topgun-infrastructure-weu-01"
}

variable "url_validation" {
  type        = string
  description = "rg name for VMs"
  default     = "https://management.azure.com/subscriptions/8bfff7c4-6972-4035-88a4-0e0121080864/resourcegroups/TerraformStateRG?api-version=2017-05-10"
}

variable "location" {
  type        = string
  description = "Azure region to deploy all resources"
  default     = "westeurope"
  validation {
    condition     = var.location == "westeurope" || var.location == "northeurope"
    error_message = "Sorry but we only accept location as west or north europe."
  }
}


