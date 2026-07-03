{{
config(
post_hook="
INSERT INTO JOB_STATUS
VALUES('SALES_MODEL',CURRENT_TIMESTAMP)
"
)
}}

SELECT *
FROM {{ source('raw','SALES_TRANSACTIONS') }}
