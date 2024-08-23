variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF state"
  default     = "saul-devops-recipe-app-tf-state"
}

variable "tf_state_table" {
  description = "Name of the DynamoDB table for TF state locking"
  default     = "saul-devops-recipe-app-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recip-app-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "sebenitezg@outlook.com"
}
