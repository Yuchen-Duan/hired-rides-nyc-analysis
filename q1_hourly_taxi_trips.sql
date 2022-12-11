
SELECT COUNT(taxi_id),strftime ('%H',pickup_datetime) hour
FROM taxi_trips
GROUP BY strftime ('%H',pickup_datetime)
