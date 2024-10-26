# dev/variables.tf

variable "db_prefix" {
  description = "Prefix for environment-specific database names"
  type        = string
  default     = "dev" 
}
