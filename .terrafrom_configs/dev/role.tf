# dev/roles.tf

resource "snowflake_role" "example_role" {
  name    = "${var.db_prefix}_CUSTOMER_ROLE"
  comment = "Role for managing access to ${var.db_prefix}_CUSTOMER_DB"
}

# Grant usage of the database to the role
resource "snowflake_database_grant" "db_usage" {
  database_name = snowflake_database.customer_db.name
  roles         = [snowflake_role.example_role.name]
  privilege     = "USAGE"
}

# Grant usage of the schema to the role
resource "snowflake_schema_grant" "schema_usage" {
  database_name = snowflake_database.customer_db.name
  schema_name   = snowflake_schema.example_schema.name
  roles         = [snowflake_role.example_role.name]
  privilege     = "USAGE"
}
