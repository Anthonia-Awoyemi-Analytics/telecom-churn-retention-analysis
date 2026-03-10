SQL Index

This project uses PostgreSQL SQL scripts for reproducibility.

sql/01_setup_and_metadata.sql
Confirm active database and list tables.

sql/02_audit_raw.sql
Precleaning audit: row count, uniqueness, missing/blank checks, consistency checks.

sql/03_cleaning.sql
Creates customer_churn_clean with normalized names and correct data types (TRIM/NULLIF/COALESCE casting).

sql/04_validation.sql
Post clean validation: row count match, null checks, tenure range, churn distribution, charge ranges.

sql/05_analysis_churn.sql
Analysis: overall churn KPI, churn by contract, churn by tenure bands, contract×tenure cross segmentation, month to month churn count.

sql/06_analysis_revenue.sql
Revenue lens: churned vs retained averages; month to month churner vs non churner monthly charges.
