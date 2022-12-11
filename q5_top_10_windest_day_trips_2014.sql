
WITH 
    top_windest_days AS (
        SELECT 
            DATE(DATE) AS date, 
            DailySustainedWindSpeed
        FROM daily_weather
        WHERE strftime('%Y',DATE) = '2014'
        ORDER BY DailySustainedWindSpeed DESC
        LIMIT 10
    ),
    daily_hired_rides AS (
        SELECT
          DATE(pickup_datetime) AS date, 
          COUNT(taxi_id) AS trip_count
        FROM taxi_trips
        WHERE strftime('%Y',pickup_datetime) = '2014'
        GROUP BY date

        UNION

        SELECT
          DATE(pickup_datetime) AS date, 
          COUNT(uber_id) AS trip_count
        FROM uber_trips
        WHERE strftime('%Y',pickup_datetime) = '2014'
        GROUP BY date),
    daily_hired_rides_combine AS (
        SELECT date, SUM(trip_count) AS trip_count
        FROM daily_hired_rides
        GROUP BY date
    )


SELECT
    top_windest_days.date, 
    daily_hired_rides_combine.trip_count
FROM top_windest_days
INNER JOIN daily_hired_rides_combine ON top_windest_days.date = daily_hired_rides_combine.date
