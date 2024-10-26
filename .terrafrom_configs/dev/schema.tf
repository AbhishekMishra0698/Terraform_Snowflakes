# dev/schema.tf

resource "snowflake_schema" "example_schema" {
  database = snowflake_database.customer_db.name
  name     = "PUBLIC"
  comment  = "Schema for ${var.db_prefix} customer table"

  lifecycle {
    prevent_destroy     = true
    create_before_destroy = true
    ignore_changes = [comment]  # Prevents changes to the schema from being reapplied
  }
}
