{{ config(materialized='table')}}

select 
CUSTOMER_ID,
Sum(AMOUNT) Total_Sales
from SALES_TRANSACTIONS
Group By CUSTOMER_ID