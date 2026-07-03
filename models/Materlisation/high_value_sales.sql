{{
    config(materialized='ephemeral')
}}

select * from SALES_TRANSACTIONS
Where AMOUNT > 5000