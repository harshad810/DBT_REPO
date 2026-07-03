{% set regions = ['North','South','West'] %}
SELECT
{% for region in regions %}
SUM(CASE WHEN region='{{ region }}'
THEN AMOUNT ELSE 0 END)
AS {{ region }}_SALES
{% if not loop.last %},{% endif %}
{% endfor %}
FROM DBT_DEMO.MACRO_SCH.SALES_TRANSACTIONS