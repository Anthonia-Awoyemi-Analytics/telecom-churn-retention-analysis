 2026-02-26
- Dataset downloaded and verified (7043 customer records).
- Identified absence of date fields.
- Decided to use tenure as proxy for cohort analysis.
- Updated metric definitions accordingly.

- Enabled multi-database mode in DBeaver.
- Created project database: edtech_growth_analysis.
- Changed table name from wa_fn_usec to Customer_Churn_Raw.

2026_02_27
- Observed that source columns use capitalized identifiers requiring quotes in PostgreSQL.
- Decision made to normalize column names in cleaned table, not in raw layer.
- Completed uniqueness audit: no duplicate CustomerID values found.
- Completed missing value audit.
- Identified 11 blank values in TotalCharges.
- Verified that blank TotalCharges rows correspond to tenure = 0.
- Determined blanks are logically valid and not data corruption.
- Starting cleaning phase: creating customer_churn_clean from customer_churn_raw (type casting + missing handling + column normalization).
- Created customer_churn_clean and inserted transformed data from customer_churn_raw.
- Verified row count and completed initial sanity checks.

2026_02_28
- Created customer_churn_clean and inserted cleaned data from raw table.
- Verified row count matches raw (7043).
- Initial sanity check passed (max tenure_months = 72).
- Verified tenure_months range (0–72) after cleaning.

2026_03_01
- Computed baseline churn KPI (overall churn rate = 26.54%).
- Analyzed churn segmented by contract type.
- Completed churn segmentation by contract type.
- Identified month-to-month contracts as primary churn driver.

2026_03_02
- Completed churn segmentation by tenure bands.
- Identified early-stage churn (0–6 months) as highest risk segment.
- Completed cross-segmentation analysis (contract × tenure).
- Identified early month-to-month customers as primary churn driver.
- Analyzed revenue metrics segmented by churn status.
- Computed churn concentration: Month-to-month contributes ~88.6% of churn.


2026_03_03
