{% snapshot scd_products %}

{{
    config(
      target_schema='snapshots',
      unique_key='id_producto',
      strategy='check',
      check_cols=['precio_unitario', 'categoria_producto', 'descripcion'],
    )
}}

select * from {{ ref('stg_parts') }}

{% endsnapshot %}