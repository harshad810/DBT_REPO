{{
    config(
        materialized='incremental'
    )
}}

SELECT 
    id,
    name,
    position,
    department,
    salary,
    received_at
FROM {{ source('raw','employee_details') }}

{% if is_incremental() %}

WHERE received_at >
(
    SELECT MAX(received_at)
    FROM {{ this }}
)

{% endif %}