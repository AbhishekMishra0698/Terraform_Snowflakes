# dev/database.tf

resource "snowflake_database" "customer_db" {
  name    = "${var.db_prefix}_CUSTOMER_DB"
  comment = "Database for ${var.db_prefix} environment"
}
