{% docs test_reconciliacion_totales %}
### Test de Reconciliación: Staging vs Marts
Este test asegura la **integridad financiera** del pipeline. Suma el `total_price` en origen y lo compara con el `importe_total` en la tabla de hechos.
* **Fallo:** Si la diferencia es mayor a 0.01, significa que se están duplicando o perdiendo registros durante los Joins o Agregaciones.
{% enddocs %}

{% docs test_fechas_validas %}
### Test de Integridad Temporal
Valida que no existan órdenes con fechas imposibles (posteriores a hoy o anteriores al siglo XX). 
* **Importancia:** Evita que datos corruptos de sistemas fuente ensucien los reportes de series temporales.
{% enddocs %}

{% docs test_clientes_huerfanos %}
### Test de Integridad Referencial (Joins)
Busca pedidos en la capa intermedia que no hayan podido cruzarse con un cliente.
* **Fallo:** Indica que hay `customer_id` en los pedidos que no existen en el maestro de clientes.
{% enddocs %}