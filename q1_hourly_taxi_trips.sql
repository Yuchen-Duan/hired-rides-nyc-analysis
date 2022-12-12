
SELECT COUNT(taxi_id),strftime ('%H',pickup_datetime) AS hour
FROM taxi_trips
GROUP BY strftime ('%H',pickup_datetime)
