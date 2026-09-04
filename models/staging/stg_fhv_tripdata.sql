SELECT 
    -- identifiers
    dispatching_base_num,
    affiliated_base_number, 
    CAST(PULocationID AS INT64) AS pickup_location_id,
    CAST(DOLocationID AS INT64) AS dropoff_location_id,

    -- timestamps
    pickup_datetime,
    dropoff_datetime,

    -- trip info
    SR_Flag AS sr_flag


FROM {{ source('raw_data', 'fhv_tripdata') }}
WHERE dispatching_base_num IS NOT NULL