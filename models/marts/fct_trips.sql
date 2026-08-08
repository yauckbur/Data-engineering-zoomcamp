SELECT
    vendor_id,
    pickup_datetime,
    pickup_location_id,
    service_type,
    COUNT(*) AS row_count
FROM {{ ref('int_trips_unioned') }}
GROUP BY
    vendor_id,
    pickup_datetime,
    pickup_location_id,
    service_type
HAVING COUNT(*) > 1
ORDER BY row_count DESC