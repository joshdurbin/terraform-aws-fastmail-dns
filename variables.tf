variable "domain_name" {
  description = "The domain name to setup DNS records for like `example.com`"
  type        = "string"
}

variable "create_root_domain_txt" {
  description = "Determines if the root domain should have a TXT record."
  default     = true
  type        = "string"
}

variable "create_mail_cname" {
  description = "Determines if the root mail cname should exist directed at FastMail."
  default     = false
  type        = "string"
}

variable "record_ttl" {
  description = "Record TTLS"
  default     = "3600"
  type        = "string"
}
