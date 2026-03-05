{% snapshot snp_customers %}

{{
    config(
      target_schema='snapshots',
      unique_key='customer_id',
      strategy='check',
      check_cols=['name', 'address', 'phone', 'segment'],
    )
}}

select * from {{ ref('stg_customers') }}

{% endsnapshot %}