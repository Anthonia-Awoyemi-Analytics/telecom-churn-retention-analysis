01_setup_and_metadata.sql
Purpose:
Environment checks and metadata helpers.
Why:
When starting a session, it is useful to confirm the active database and inspect available tables before running analysis queries.

Confirm which database you are connected to
SELECT current_database();

List all base tables in the public schema
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;

Inspect column structure for a specific table
SELECT
  column_name,
  data_type
FROM information_schema.columns
WHERE table_name = 'customer_churn_clean'
ORDER BY ordinal_position;

Quick row count checks for key tables
SELECT 'customer_churn_raw' AS table_name, COUNT(*) AS row_count
FROM customer_churn_raw
UNION ALL
SELECT 'customer_churn_clean', COUNT(*)
FROM customer_churn_clean;
