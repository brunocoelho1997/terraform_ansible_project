variable "dev_container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "DevHost"
}

variable "prd_container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "PrdHost"
}
