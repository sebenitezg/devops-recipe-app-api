# The idea is to identify the project specifically
variable "prefix" {
  description = "Prefix fro resources in AWS"
  default     = "raa" # Means recipe app api
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact email for taggin resources"
  default     = "sebenitezg@outlook.com"
}
