{{ config(materialized='table') }}
 
SELECT
    CUSTOMER_ID,
    COUNT(*) TOTAL_HIGH_VALUE_TXNS,
    SUM(AMOUNT) TOTAL_SALES
FROM {{ ref('high_value_sales') }}
GROUP BY CUSTOMER_ID