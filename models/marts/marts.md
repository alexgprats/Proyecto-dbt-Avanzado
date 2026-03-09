{% docs fct_orders_cleansed %}
### Tabla de Hechos: Órdenes de Compra (Central)
Esta es la tabla de hechos principal del modelo estrella. Consolida la información operativa de los pedidos con métricas calculadas para análisis de negocio.

**Lógica de Negocio y Transformaciones:**
* **Métricas Agregadas:** Incluye el conteo de piezas totales y proveedores distintos por cada pedido.
* **Categorización Dinámica:** Utiliza la macro `categorizar_importe` para clasificar las ventas según su volumen bruto.
* **Integridad Referencial:** Garantiza la conexión entre la operación y las dimensiones de clientes y proveedores.

**Paquete de Ejecución:** `business_package`.
{% enddocs %}

{% docs dim_customers_cleansed %}
### Dimensión: Clientes
Maestro de clientes enriquecido para segmentación de mercado.
* **Transformación:** Normalización de direcciones mediante la función `upper()` para asegurar consistencia en reportes geográficos.
{% enddocs %}

{% docs dim_parts_cleansed %}
### Dimensión: Catálogo de Piezas
Contiene el detalle técnico y precios minoristas de todos los productos del inventario.
{% enddocs %}

{% docs dim_suppliers_cleansed %}
### Dimensión: Directorio de Proveedores
Proporciona información crítica sobre el balance de cuentas y datos de contacto de los proveedores registrados.
{% enddocs %}