select
    TRANSACTION_ID,
    AMOUNT,
    {{ calculate_tax('AMOUNT')}} AS TAX
From Sales_Transactions