{% snapshot scd_customers %}

{{
    config(
      target_schema='snapshots',
      unique_key='id_cliente',
      strategy='check',
      check_cols=['email', 'nombre_cliente', 'pais'],
    )
}}

select * from {{ ref('stg_customers') }}

{% endsnapshot %}