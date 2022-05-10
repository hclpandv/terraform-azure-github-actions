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
  description = "Azure URI to validate via API call"
  default     = "https://management.azure.com/subscriptions/8bfff7c4-6972-4035-88a4-0e0121080864/resourcegroups/TerraformStateRG?api-version=2017-05-10"
}

variable "api_token" {
  type        = string
  description = "Azure API Token"
  default     = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6ImpTMVhvMU9XRGpfNTJ2YndHTmd2UU8yVnpNYyIsImtpZCI6ImpTMVhvMU9XRGpfNTJ2YndHTmd2UU8yVnpNYyJ9.eyJhdWQiOiJodHRwczovL21hbmFnZW1lbnQuY29yZS53aW5kb3dzLm5ldC8iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC80MGFlMDUwNy0yMzE5LTQ3ODktYTcwYS0yNGM1M2Q0OTE0MDcvIiwiaWF0IjoxNjUyMjE3MDI0LCJuYmYiOjE2NTIyMTcwMjQsImV4cCI6MTY1MjIyMTI1NiwiYWNyIjoiMSIsImFpbyI6IkFVUUF1LzhUQUFBQTZFZENGU3FvNjNySm1Ia3JoV3RLVlJRVkF1dkhaZk51SWpiNG5JcXhLaGR6eU9XU1lHQ282NmZ0TVVvWTJlUXNySmRVVGpnNmcvdXVSZE9iYml1M0dnPT0iLCJhbHRzZWNpZCI6IjE6bGl2ZS5jb206MDAwMzQwMDEyMDc2MTYxRCIsImFtciI6WyJwd2QiXSwiYXBwaWQiOiI1ZTFiYTU0ZC00NTA0LTQ3OTktOTYwMC02ZDA1ZTU4ZjA2ODIiLCJhcHBpZGFjciI6IjIiLCJlbWFpbCI6InZpa2lzY3JpcHRzQGdtYWlsLmNvbSIsImZhbWlseV9uYW1lIjoiUGFuZGV5IiwiZ2l2ZW5fbmFtZSI6IlZpa2FzIiwiZ3JvdXBzIjpbImY5ZGVkZDY2LWZlYTctNDdmNi1iZGVmLTg3ZjIwMjQwNDU1ZCJdLCJpZHAiOiJsaXZlLmNvbSIsImlwYWRkciI6IjIwMi4xODcuNC4xODAiLCJuYW1lIjoidmlraXNjcmlwdHMiLCJvaWQiOiJmMTAyZWUwYS1jMTRmLTQ3OTItYTE1YS01MTUxMjcxOWM5MTAiLCJwdWlkIjoiMTAwMzIwMDFDODIyNkFGQyIsInJoIjoiMC5BWHdBQndXdVFCa2ppVWVuQ2lURlBVa1VCMFpJZjNrQXV0ZFB1a1Bhd2ZqMk1CTjhBSFUuIiwic2NwIjoidXNlcl9pbXBlcnNvbmF0aW9uIiwic3ViIjoibmYyUTJHb2t6YTQwTXlXVkQtNm5PVEhsYjJJLVZfNGtqOC14UkthLXZtUSIsInRpZCI6IjQwYWUwNTA3LTIzMTktNDc4OS1hNzBhLTI0YzUzZDQ5MTQwNyIsInVuaXF1ZV9uYW1lIjoibGl2ZS5jb20jdmlraXNjcmlwdHNAZ21haWwuY29tIiwidXRpIjoicHliSlRJc3hIazJTMk5MTmNQUUpBUSIsInZlciI6IjEuMCIsIndpZHMiOlsiMTNiZDFjNzItNmY0YS00ZGNmLTk4NWYtMThkM2I4MGYyMDhhIl0sInhtc190Y2R0IjoxNjEzNDA5NjM2fQ.EG697YCH5GVt492gVqXppya-j4NRD3LhpAm_823bFXoR9gaN2P_rr9dYzRcEcKQQl67zmhYRBmOC-MMZRthhK3j0f1BQA9OyyNWsKNNvDeShRfoYSgfgFu4rxPBy2gW2LCnr791wiARkGn1UGHOKvxTGzjLWwpQMUmpgWzg4e83nR_wL8kJrZMRjsamYkSmHpHG5PU9YvrFkgrKo6TlTZa-iy-aCdQUMWOSqqWUjHsWrs2_8kvkfTme4g-cyeztzniRhnb2NSiWNEbXf7EnlINVbmXtcW02u8v699NC83rXqfGAi2OY_nXB7ZCgl68Smx78ducixziYg4NKK-sHJFw"
  #sensitive   = true
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


