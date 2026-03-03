with fct_totals as (
    select sum(importe_total) as total_fct from {{ ref('fct_orders') }}
),
stg_totals as (
    select sum(total_price) as total_stg from {{ ref('stg_orders') }}
)
select *
from fct_totals, stg_totals
where abs(total_fct - total_stg) > 0.01