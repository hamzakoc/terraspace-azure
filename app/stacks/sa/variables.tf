variable "enable_https_traffic_only" {
  description = "forces HTTPS if enabled"
  type        = string
  default     = true
}

variable "rg_name" {
  type = string

}

variable "location" {
  type = string
}
