
WITH all_hires AS (
    SELECT
      DATE(pickup_datetime) AS date, 
      COUNT(taxi_id) AS trip_count,
      AVG(distance) AS avg_distance
    FROM taxi_trips
    WHERE strftime('%Y',pickup_datetime) = '2009'

    UNION ALL

    SELECT
      DATE(pickup_datetime) AS date, 
      COUNT(uber_id) AS trip_count,
      AVG(distance) AS avg_distance
    FROM uber_trips
    WHERE strftime('%Y',pickup_datetime) = '2009'
    
    GROUP BY date
    ORDER BY trip_count DESC
)
SELECT date, avg_distance FROM all_hires
LIMIT 10
