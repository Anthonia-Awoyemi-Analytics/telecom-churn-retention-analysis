                                          **Revenue Risk \& Retention Strategy Analysis**

                                             **Subscription-Based Telecom Business**
 


**Executive Summary**



This project looks at customer churn in a subscription-based telecom business to understand why customers are leaving and what that means for revenue stability. After cleaning and analysis, the overall churn rate was 26.5%, which initially signals a retention issue. But instead of stopping at that number, I broke the data down by contract type and customer tenure to identify where churn was actually concentrated.


The pattern became clear that most churn was coming from customers on month to month contracts, particularly within their first six months. That early stage, flexible contract segment turned out to be the primary churn driver in the business. 


The bigger concern, however, was financial. When I compared revenue metrics, I found that customers who churned were paying more per month on average than those who stayed. In other words, the telecom company wasn’t just losing customers, it was losing higher paying customers early in their lifecycle. To quantify the potential upside, I modeled a conservative improvement scenario. If the company reduces churn in the month to month segment by just 10%, it could protect approximately $12,000 in monthly recurring revenue about $145,000 annually.


This reframes churn from a general metric into a focused revenue-risk issue. Based on the findings, retention efforts should prioritize early stage month to month customers through stronger onboarding and incentives to transition into longer term contracts.





**Business Problem**



Customer churn directly impacts recurring revenue in subscription businesses.  

While a 26.5% churn rate signals risk, it does not explain:



• Which customers are leaving

• When they are leaving

• How much revenue is being lost

• Where retention efforts should be prioritized



The objective of this project was to identify churn drivers, quantify financial exposure, and model the business impact of retention improvements.







**Dataset**



• Telco Customer Churn dataset (7,043 customers)

• Subscription based telecom business

• Includes contract type, tenure, services, billing details, and churn status



The dataset was treated as a real-world business scenario requiring full audit, cleaning, validation, and strategic analysis.







Analytical Approach



The project followed a structured, reproducible workflow:



1\. Data Audit

  • Verified row integrity (7,043 records)

  • Checked uniqueness of CustomerID

  • Identified and handled missing/blank values



2\. Data Cleaning (PostgreSQL)

  • Created a clean analysis table

  • Normalized column names

  • Converted text fields to proper numeric types

  • Validated tenure and revenue ranges



3\. Churn Segmentation

  • Overall churn rate calculation

  • Churn by contract type

  • Churn by tenure bands

  • Contract × Tenure cross-segmentation



4\. Revenue Impact Analysis

  • Compared average monthly charges (churned vs retained)

  • Identified higher paying customers among churners



5\. Retention Impact Modeling

  • Simulated 10% churn reduction in the month to month segment

  • Estimated revenue protected ($145K annually)



All analysis was conducted in PostgreSQL with structured SQL scripts for reproducibility.





**Key Findings**



• Overall churn rate: 26.54%

• Month to month contracts drive the majority of churn

• Highest churn occurs within the first 6 months

• Churned customers pay higher average monthly charges than retained customers

• 89% of churn originates from month to month customers

• A 10% reduction in month-to-month churn could protect $145K annually







**Strategic Recommendation**



Retention efforts should focus on early stage month to month customers, as this segment represents the highest concentration of revenue risk.



Potential actions include:



• Improving onboarding experience

• Strengthening early engagement touchpoints

• Incentivizing transition to longer term contracts

• Monitoring high monthly charge customers in early tenure



Even modest improvements in this segment could significantly stabilize recurring revenue.







**Tools \& Technologies**



PostgreSQL

SQL (aggregation, CTEs, conditional logic, segmentation)

DBeaver

GitHub (version control \& project documentation)

