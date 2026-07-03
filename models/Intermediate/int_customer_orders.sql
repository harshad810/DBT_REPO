SELECT
    c.CUSTOMER_ID,
    c.FIRST_NAME,
    c.LAST_NAME,
    o.ORDER_ID,
    o.ORDER_DATE,
    o.TOTAL_AMOUNT
FROM {{ ref('stg_Customers') }} c
JOIN {{ ref('stg_Orders') }} o
ON c.CUSTOMER_ID = o.CUSTOMER_ID