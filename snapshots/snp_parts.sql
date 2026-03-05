{% snapshot snp_parts %}

{{
    config(
      target_schema='snapshots',
      unique_key='part_id',
      strategy='check',
      check_cols=['precio_minorista', 'fabricante', 'tipo_pieza'],
    )
}}

select * from {{ ref('stg_parts') }}

{% endsnapshot %}