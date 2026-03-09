{% docs snp_customers_cleansed %}
### Snapshot: Histórico de Clientes (SCD Tipo 2)
Este snapshot monitoriza cambios en la tabla maestra de clientes para mantener la trazabilidad histórica de sus atributos.

**Estrategia de Captura:**
* **Tipo:** `check` (basado en columnas específicas).
* **Columnas Auditadas:** `name`, `address`, `phone`, `segment`.
* **Objetivo:** Permitir análisis de ventas históricos incluso si el cliente cambia de segmento o ubicación en el tiempo.

**Columnas Técnicas de dbt:**
* `dbt_valid_from`: Fecha de inicio de la versión del registro.
* `dbt_valid_to`: Fecha de fin (indica que el dato ha cambiado).
{% enddocs %}

{% docs snp_parts_cleansed %}
### Snapshot: Histórico de Piezas y Precios
Captura las variaciones en el catálogo de productos, centrándose en la evolución de los costes y categorías.

**Lógica de Negocio:**
Es crítico para el departamento de compras auditar cuándo un fabricante cambia el `precio_minorista`, permitiendo comparar márgenes de beneficio pasados con los actuales.
{% enddocs %}

{% docs snp_suppliers_cleansed %}
### Snapshot: Histórico de Proveedores
Mantiene un registro de la fiabilidad y los datos financieros de los proveedores.

**Importancia:**
Monitoriza cambios en el `balance_cuenta` y la `direccion` para asegurar que los pagos y la logística se basen en datos auditables en cualquier punto de la línea temporal.
{% enddocs %}