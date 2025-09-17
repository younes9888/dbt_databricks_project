{{ config(materialized='table') }}

select distinct
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    region,
    postal_code
from {{ ref('superstore_cleaned') }}



