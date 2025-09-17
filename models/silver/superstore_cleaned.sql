with base as (
select * 
FROM {{ref('bronze_source')}}
),
cleaned as (
    select
    Row_id as row_id,
    Order_id as order_id,
    Order_date as order_date,
    year(Order_date) as order_year,
    month(Order_date) as order_month,
    Ship_date as ship_date,
    datediff(Ship_date, order_date) as shipping_days,
    trim(Ship_mode) as ship_mode,
    Customer_id AS customer_id,
    trim(Customer_name) as customer_name,
    trim(Segment) as segment,
    trim(Country) as country,
    trim(City) as city,
    trim(State) as state,
    Postal_code as postal_code,
    trim(Region) as region,
    Product_id as product_id,
    trim(Category) as category,
    trim(Sub_category) as sub_category,
    trim(Product_name) as product_name,
    Sales as sales
    
from base
where row_id is not null
)
select * from cleaned