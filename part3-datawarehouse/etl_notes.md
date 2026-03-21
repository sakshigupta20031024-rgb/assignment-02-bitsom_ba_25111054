## ETL Decisions

### Decision 1 — Date Format Standardization
Problem:
Dates were in different formats, making it difficult to group data by month and year.
Product categories were also in an incosistent format (e.g. Electronics,electronics, ELECTRONICS)

Resolution:
All dates were converted into standard YYYY-MM-DD format. Additional fields like month and year were extracted and stored in the dim_date table.
ALl categories were standardized to a unifrom format (e.g. Electronics, Clothing, Grocery).

### Decision 2 — Handling Missing Values

Problem:
Price and quantity had some missing values. Therefore making data inconsistent and difficult to analyse.

Resolution:
Incomplete records were removed or corrected to ensure only clean and reliable data was loaded into the warehouse.

### Decision 3 — Aggregation 
Problem: The dataset did not have proper total sales value. 

Resolution:
A new field total_amount was calculated and stored in fact_sales table to reduce volume and improve query performance
