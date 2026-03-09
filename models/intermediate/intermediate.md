{% docs int_pedidos_clientes_cleansed %}
### Tabla de Unión y Agregación: Pedidos y Clientes
Esta tabla representa el núcleo de la transformación en la capa intermedia, consolidando la información de cabeceras de pedidos con la lógica de limpieza de clientes.

**Transformaciones y Lógica Aplicada:**
* **Unión de Entidades:** Se realiza un Join entre `stg_orders` y `stg_customers` para enriquecer la información del pedido con metadatos del cliente.
* **Limpieza de Datos:** Aplicación de filtros para eliminar registros con fechas incoherentes (outliers) y normalización de importes.
* **Agregación de Líneas:** Se consolidan las métricas de `lineitem` para ofrecer una visión única por `order_id`.
* **Garantía de Calidad (Tests):** * `unique` y `not_null` sobre `order_id` para asegurar la integridad de la PK.
    * Validación de `customer_id` para evitar registros huérfanos en el modelo.

**Paquete de Ejecución:**
Este modelo está etiquetado bajo `transformation_package`, lo que permite su orquestación independiente de las capas de Staging o Marts.
{% enddocs %}