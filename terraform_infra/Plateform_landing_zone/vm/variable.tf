variable "base_tags" {
  type        = map(string)
  description = "Global standard tags passed down from the root module."
  default     = {}
}

variable "custom_tags" {
  type        = map(string)
  description = "Resource-specific tags unique to this deployment."
  default     = {}
}