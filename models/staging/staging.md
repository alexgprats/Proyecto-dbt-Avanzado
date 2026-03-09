{% docs stg_orders_cleansed %}
### Capa Staging: Pedidos (Incremental)
Este modelo extrae los datos de la tabla `ORDERS` de Snowflake. 
**Puntos clave:**
* **Carga Incremental:** Configurado para procesar solo registros nuevos basados en `o_orderdate` para optimizar costes de cómputo.
* **Calidad:** Valida que el estado del pedido esté dentro de los valores permitidos (F, O, P).
{% enddocs %}

{% docs stg_customers_cleansed %}
### Capa Staging: Clientes
Limpieza inicial de la tabla de clientes. Se renombran campos crudos de Snowflake a nombres estándar (snake_case).
{% enddocs %}

{% docs stg_lineitems_cleansed %}
### Capa Staging: Detalle de Pedidos
Detalle granular de cada línea de venta. Es la fuente principal para calcular métricas financieras en capas superiores.
{% enddocs %}

{% docs stg_parts_cleansed %}
### Capa Staging: Maestro de Piezas
Extracción de la tabla de productos. Se asegura la integridad de la clave primaria `part_id`.
{% enddocs %}

{% docs stg_suppliers_cleansed %}
### Capa Staging: Proveedores
Información base de proveedores, incluyendo balances de cuenta y datos de contacto.
{% enddocs %}