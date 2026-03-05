{% snapshot snp_suppliers %}

{{
    config(
      target_schema='snapshots',
      unique_key='supplier_id',
      strategy='check',
      check_cols=['direccion', 'telefono', 'balance_cuenta'],
    )
}}

select * from {{ ref('stg_suppliers') }}

{% endsnapshot %}