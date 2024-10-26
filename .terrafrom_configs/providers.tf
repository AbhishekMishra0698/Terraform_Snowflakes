# providers.tf
terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.35.0"
    }
  }
}

provider "snowflake" {
  username = var.snowflake_username
  password = var.snowflake_password
  account  = var.snowflake_account
  role     = "ACCOUNTADMIN"  # Adjust role as needed
  region   = "us-east-1"     # Specify the region as needed
}

variable "snowflake_username" {}
variable "snowflake_password" {}
variable "snowflake_account" {}
    
