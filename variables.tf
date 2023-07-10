variable "environment" {
  type        = string
  description = "(Required) Specifies the Environment value (prod, qa, dev)."
  validation {
    condition     = contains(["prod", "qa", "dev"], var.environment)
    error_message = "Invalid environment parameter."
  }
}

variable "workload_name" {
  type        = string
  description = "value"
}

variable "location" {
  type        = string
  description = "(Required) The location of the Resource Group."
}

variable "location_abbreviation" {
  type        = string
  description = "(Required) The abbreviation of the location used in the Resource Group name."
}

variable "sku" {
  type        = string
  description = "value"
}

variable "origin_name" {
  type        = string
  description = "value"
}

variable "origin_host_name" {
  type        = string
  description = "value"
}

variable "is_http_allowed" {
  type        = string
  description = "value"
  default = true
}
