{{ config(materialized='table') }}

select
    order_id,
    customer_id,
    product_id,
    order_date,
    ship_date,
    sales,
    shipping_days,
    order_year,
    order_month
from {{ ref('superstore_cleaned') }}
