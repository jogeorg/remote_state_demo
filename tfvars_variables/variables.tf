variable "subscription_id" {
  type        = string
  description = "The subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID"
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type      = string
  sensitive = true
}

variable "environment" {
  type = string
}
