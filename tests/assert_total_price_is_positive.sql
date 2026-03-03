select
    order_id,
    importe_total
from {{ ref('fct_orders') }}
where importe_total <= 0