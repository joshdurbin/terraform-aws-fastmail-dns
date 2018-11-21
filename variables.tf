variable "domain_name" {
  description = "The domain name to setup DNS records for like `example.com`"
  type        = "string"
}

variable "create_root_domain_txt" {
  description = "Determines if the root domain should have a TXT record."
  default     = true
  type        = "string"
}

variable "record_ttl" {
  description = "Record TTLS"
  default     = "3600"
  type        = "string"
}
