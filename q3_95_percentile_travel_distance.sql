

SELECT
  distance AS '95% percentile of distance'
FROM taxi_trips
WHERE strftime('%m',pickup_datetime) = '07' AND strftime('%Y',pickup_datetime) = '2013'

UNION ALL

SELECT
  distance AS '95% percentile of distance'
FROM uber_trips
WHERE strftime('%m',pickup_datetime) = '07' AND strftime('%Y',pickup_datetime) = '2013'

ORDER BY distance DESC
LIMIT 1
OFFSET ROUND(
    (
    SELECT COUNT(distance) 

    FROM (
        SELECT
          distance
        FROM taxi_trips
        WHERE strftime('%m',pickup_datetime) = '07' AND strftime('%Y',pickup_datetime) = '2013'

        UNION ALL

        SELECT
          distance
        FROM uber_trips
        WHERE strftime('%m',pickup_datetime) = '07' AND strftime('%Y',pickup_datetime) = '2013'
        ) 
    ) * 9.5 / 10 - 1);
