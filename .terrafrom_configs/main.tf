# main.tf

# Variable for database prefix to distinguish environments
variable "db_prefix" {
  description = "Prefix for environment-specific database names"
  type        = string
}

# Modules for different environments
module "dev" {
  source     = "./dev"
  db_prefix  = "DEV"
}

