{{ config(materialized='view')}}

select 
TRANSACTION_ID,
CUSTOMER_ID
PRODUCT_NAME,
AMOUNT
from SALES_TRANSACTIONS