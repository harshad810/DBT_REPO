{{
config(
pre_hook="
INSERT INTO JOB_AUDIT
VALUES('SALES_MODEL',CURRENT_TIMESTAMP)
"
)
}}
SELECT *
FROM {{ source('raw','SALES_TRANSACTIONS') }}
 