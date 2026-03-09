# Assumptions & Decisions Log 2026_02_26

## Assumption 1
Dataset represents a snapshot at a fixed point in time.

## Assumption 2
Tenure will be used as a proxy for subscription start timing.

## Assumption 3
Campaign cohort will be simulated using tenure bands.

2026_02_27
## Data Audit Step 1 — Row Integrity
Total rows in raw dataset: 7043.
Import completed successfully with no row loss.

## Column Naming Observation
Source dataset contains capitalized column names (e.g., "CustomerID").
PostgreSQL treats quoted identifiers as case-sensitive.
Column normalization will be handled in the clean layer.

## Data Audit Step 2 — Uniqueness
Row count = 7043 and distinct "CustomerID" = 7043.
No duplicate customers detected.

## Data Audit Step 3 — Missing Values
TotalCharges has 11 blank values.
All other key columns (tenure, MonthlyCharges, Churn) have no missing values.
Blank rate for TotalCharges ≈ 0.16%.

## Data Audit Step 4 — Consistency Check
All 11 rows with blank TotalCharges have tenure = 0.
Conclusion: Blank TotalCharges is logically consistent for newly subscribed customers.
Decision: During cleaning, blank TotalCharges will be converted to 0.

## Cleaning Plan
Create a clean table with normalized column names and correct data types.
TotalCharges blanks (verified to correspond to tenure = 0) will be converted to 0 for numeric consistency.

## Cleaning Step Completed
Created customer_churn_clean with normalized columns and data type conversions.
Converted blank TotalCharges (only when tenure=0, verified earlier) to 0 for numeric consistency.

2026_02_28

## Cleaning Validation
customer_churn_clean row count = 7043 (matches raw).
Blank TotalCharges were converted to 0 during cleaning for numeric consistency (previously verified they occur only when tenure=0).
