select
    max(order_date) as last_order
from {{ ref('fct_orders') }}
having max(order_date) < '1990-01-01' -- Esto dará PASS porque 1998 NO es menor que 1990