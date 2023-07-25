WITH flattened_json_data AS (
  SELECT
    _airbyte_data.JSONExtractValue('$.id') AS customer_id,
    _airbyte_data.JSONExtractValue('$.first_name') AS first_name,
    _airbyte_data.JSONExtractValue('$.last_name') AS last_name,
    _airbyte_data.JSONExtractValue('$.email') AS email
  FROM airbyte_jaffle_shop._airbyte_raw_customers
)


SELECT * FROM flattened_json_data