with base as (select * from {{source('source','superstore_dataset')}})
select * 
from base