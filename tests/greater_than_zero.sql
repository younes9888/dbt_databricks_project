select * from {{ ref('superstore_cleaned') }}
where sales < 0