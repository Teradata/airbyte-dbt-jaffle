WITH source AS (
    SELECT * FROM {{ source('airbyte_jaffle_shop', '_airbyte_raw_orders')}}
),

flattened_json_data AS (
  SELECT
    _airbyte_data.JSONExtractValue('$.id') AS order_id,
    _airbyte_data.JSONExtractValue('$.user_id') AS customer_id,
    _airbyte_data.JSONExtractValue('$.order_date') AS order_date,
    _airbyte_data.JSONExtractValue('$.status') AS status
  FROM source
)


SELECT * FROM flattened_json_data