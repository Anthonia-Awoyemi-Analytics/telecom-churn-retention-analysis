03_cleaning.sql
Purpose:
Create a cleaned analysis table with normalized column names and correctly typed fields.
Why:
The raw table preserves the source exactly, while the clean table is prepared for analysis and reporting.
Source table:
customer_churn_raw

Rerunnable: drop the clean table if it already exists
DROP TABLE IF EXISTS customer_churn_clean;

Create clean table (analysisfriendly schema)
CREATE TABLE customer_churn_clean (
    customer_id TEXT,
    gender TEXT,
    senior_citizen INT,
    partner TEXT,
    dependents TEXT,
    tenure_months INT,
    phone_service TEXT,
    multiple_lines TEXT,
    internet_service TEXT,
    online_security TEXT,
    online_backup TEXT,
    device_protection TEXT,
    tech_support TEXT,
    streaming_tv TEXT,
    streaming_movies TEXT,
    contract TEXT,
    paperless_billing TEXT,
    payment_method TEXT,
    monthly_charges NUMERIC(10,2),
    total_charges NUMERIC(10,2),
    churn TEXT
);

Insert transformed data from raw
Key techniques:
TRIM() removes extra spaces
NULLIF(x, '') turns empty strings into NULL
COALESCE(x, '0') replaces NULL with '0'
::int and ::numeric cast text into numeric types safely
Blank TotalCharges values were previously audited and confirmedto occur only when tenure = 0, so they are converted to 0
in the clean layer for numeric consistency

INSERT INTO customer_churn_clean
SELECT
  TRIM("CustomerID") AS customer_id,
  TRIM("gender") AS gender,
  NULLIF(TRIM("SeniorCitizen"), '')::int AS senior_citizen,
  TRIM("Partner") AS partner,
  TRIM("Dependents") AS dependents,
  NULLIF(TRIM("tenure"), '')::int AS tenure_months,
  TRIM("PhoneService") AS phone_service,
  TRIM("MultipleLines") AS multiple_lines,
  TRIM("InternetService") AS internet_service,
  TRIM("OnlineSecurity") AS online_security,
  TRIM("OnlineBackup") AS online_backup,
  TRIM("DeviceProtection") AS device_protection,
  TRIM("TechSupport") AS tech_support,
  TRIM("StreamingTV") AS streaming_tv,
  TRIM("StreamingMovies") AS streaming_movies,
  TRIM("Contract") AS contract,
  TRIM("PaperlessBilling") AS paperless_billing,
  TRIM("PaymentMethod") AS payment_method,
  NULLIF(TRIM("MonthlyCharges"), '')::numeric(10,2) AS monthly_charges,
  COALESCE(NULLIF(TRIM("TotalCharges"), ''), '0')::numeric(10,2) AS total_charges,
  TRIM("Churn") AS churn
FROM customer_churn_raw;
