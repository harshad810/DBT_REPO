{{ 
    config(materialized='view')
    }}

{% set discount = 10 %}

select TRANSACTION_ID,
        AMOUNT,
        AMOUNT - (AMOUNT * {{ discount }}/100) as Final_Amount
From Sales_Transactions
