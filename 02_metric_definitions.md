# Metric Definitions

## Churn
Churn = customer is no longer active/paying at the end of the observation period.
Dataset field used: Churn (Yes/No).

## Retention rate
Retention rate = 1 - churn rate (for the same group/timeframe).

## Cohort
Cohort = group of customers based on a shared start time (e.g., signup month).
If dataset lacks signup_date, we use a proxy (see assumptions).

## LTV (Revenue LTV proxy)
LTV ≈ MonthlyCharges * tenure_months
Note: This is a revenue proxy, not profit LTV.

## Campaign cohort (simulated)
Campaign cohort = customers whose (estimated) start date falls within the campaign window.
Campaign window: [to be decided]
