select
    order_id
from {{ ref('int_pedidos_clientes') }}
where nombre_cliente is null