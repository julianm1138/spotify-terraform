

# general and loction

variable "location" {
  description = "Azure region for all resources"
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  default     = "spotify-rg"
}

# dns 

variable "dns_label" {
  type = string
  default = "spotifyacilol"
}




# storage variables


variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  default     = "spotifystorage1234"
}

variable "storage_account_tier" {
  description = "Storage tier for Azure Storage Account"
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "Replication type for storage account"
  default     = "LRS"
}




# deployment variables 

variable "container_name" {
  description = "Name of the container in ACI"
  default     = "spotify-container"
}

variable "container_image" {
  description = "Docker image for the Spotify app"
  default     = "youracr.azurecr.io/spotify:latest"
}

variable "container_cpu" {
  description = "CPU allocation for container"
  default     = "1"
}

variable "container_memory" {
  description = "Memory allocation for container"
  default     = "1.5"
}




# outputs 

output "spotify_app_url" {
  value = azurerm_container_group.spotify_app.fqdn
}


# account


variable "subscription_id" {}
variable "tenant_id" {}

variable "acr_username" {
  description = "Azure Container Registry username"
  type        = string
}

variable "acr_password" {
  description = "Azure Container Registry password"
  type        = string
}
