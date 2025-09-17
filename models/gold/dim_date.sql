{{ config(materialized='table') }}

select distinct
    order_date as date,
    year(order_date) as year,
    month(order_date) as month,
    day(order_date) as day,
    weekofyear(order_date) as week,
    quarter(order_date) as quarter
from {{ ref('superstore_cleaned') }}
