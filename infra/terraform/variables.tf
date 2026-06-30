variable "app_name" {
  description = "Nom de l'application"
  type        = string
  default     = "devops-app"
}

variable "web_port" {
  description = "Port externe du serveur web"
  type        = number
  default     = 8080
}

variable "environment" {
  description = "Environnement (staging, prod)"
  type        = string
  default     = "staging"

  validation {
    condition     = contains(["staging", "prod"], var.environment)
    error_message = "L'environnement doit être staging ou prod."
  }
}