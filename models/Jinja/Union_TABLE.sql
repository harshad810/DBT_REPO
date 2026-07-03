{{ dbt_utils.union_relations(
    relations=[
        ref('sales_2024'),
        ref('sales_2025')
    ]
) }}
 