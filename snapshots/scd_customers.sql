{% snapshot scd_customers %}

{{
    config(
      target_schema='snapshots',
      unique_key='CUSTOMER_ID',
      strategy='check',
      check_cols=['email', 'nombre_cliente', 'pais'],
    )
}}

select * from {{ ref('stg_customers') }}

{% endsnapshot %}