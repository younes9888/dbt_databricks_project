{{ config(materialized='table') }}

select distinct
    product_id ,
    product_name,
    category,
    sub_category
from {{ ref('superstore_cleaned') }}
