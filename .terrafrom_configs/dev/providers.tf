# dev/providers.tf (repeat for qa/providers.tf and prod/providers.tf)
terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.35.0"
    }
  }
}
