{{
    config(
        materialized='incremental',
        unique_key='TRANSACTION_ID'
    )
}}

SELECT 
    TRANSACTION_ID,
    CUSTOMER_ID,
    PRODUCT_NAME,
    AMOUNT,
    LAST_UPDATED
FROM SALES_TRANSACTIONS

{% if is_incremental() %}

WHERE LAST_UPDATED >
(
    SELECT MAX(LAST_UPDATED)
    FROM {{ this }}
)

{% endif %}