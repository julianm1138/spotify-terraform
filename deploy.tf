resource "azurerm_container_group" "spotify_app" {
  name                = var.container_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"


dns_name_label = var.dns_label 

  container {
    name   = "spotify-container"
    image  = "spotifyacr123.azurecr.io/spotify-clone:latest"
    cpu    = 1
    memory = 1.5

    ports {
      port     = 80
      protocol = "TCP"
    }

     commands = ["npm", "start", "--", "--host", "0.0.0.0"]
  }

  image_registry_credential {
    server   = "spotifyacr123.azurecr.io"
    username = var.acr_username
    password = var.acr_password
  }
}
