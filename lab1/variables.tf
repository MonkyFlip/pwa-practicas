variable "length" {
  description = "Length of the random string"
  type        = number
  default     = 20
}

variable "name" {
  description = "Name of the application"
  type        = string
}

variable "environment" {
  description = "Environment of the application"
  type        = string
}

variable "application_name" {
  description = "Name of the application"
  type        = string
}

variable "enable_monitoring" {
  description = "habilitar o deshabilitar monitor"
  type = bool
  default = true
}

variable "regions" {
  description = "lista de regiones donde se desplegara la infraestructura"
  type = list(string)
  default = [ "us-east-1", "us-west-2" ]
}

variable "environment_tags" {
  description = "Etiquetas de cada entorno"
  type = map(string)
  default = {
    "dev" = "Development"
    "prod" = "Production"
  }
}

variable "aplication_config" {
  description = "Configuracion especifica de la app"
  type = object({
    version = string
    maintainer = string
    dependencies = list(string)
  })
  default = {
    version = "1.0.0"
    maintainer = "Miguel Hdz"
    dependencies = [
      "dependency1", "dependency2"
      ]
  }
}

variable "allowed_networks" {
  description = "lista de redes permitidas para acceder a la app"
  type = set(string)
  default = [
    "10.0.0.0/16",
    "10.1.0.0/16"
    ]
}