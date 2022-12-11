
SELECT COUNT(uber_id),strftime ('%w',pickup_datetime) AS day
FROM uber_trips
GROUP BY strftime ('%w',pickup_datetime)
