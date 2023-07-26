WITH source AS (
    SELECT * FROM {{ source('airbyte_jaffle_shop', '_airbyte_raw_payments')}}
),
flattened_json_data AS (
  SELECT
    _airbyte_data.JSONExtractValue('$.id') AS payment_id,
    _airbyte_data.JSONExtractValue('$.order_id') AS order_id,
    _airbyte_data.JSONExtractValue('$.payment_method') AS payment_method,
    _airbyte_data.JSONExtractValue('$.amount')/100 AS amount 
  FROM source
)


SELECT * FROM flattened_json_data