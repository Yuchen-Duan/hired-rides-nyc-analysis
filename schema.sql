
CREATE TABLE hourly_weather (
    hourly_weather_id INTEGER NOT NULL, 
    date DATETIME, 
    "hourlyPrecipitation" FLOAT, 
    "hourlyWindSpeed" FLOAT, 
    PRIMARY KEY (hourly_weather_id)
)

CREATE TABLE daily_weather (
    daily_weather_id INTEGER NOT NULL, 
    date DATETIME, 
    "dailySustainedWindSpeed" FLOAT, 
    PRIMARY KEY (daily_weather_id)
)

CREATE TABLE taxi_trips (
    taxi_id INTEGER NOT NULL, 
    pickup_datetime DATETIME, 
    dropoff_datetime DATETIME, 
    pickup_longitude FLOAT, 
    pickup_latitude FLOAT, 
    dropoff_longitude FLOAT, 
    dropoff_latitude FLOAT, 
    distance FLOAT, 
    tip_amount FLOAT, 
    PRIMARY KEY (taxi_id)
)

CREATE TABLE uber_trips (
    uber_id INTEGER NOT NULL, 
    pickup_datetime DATETIME, 
    pickup_longitude FLOAT, 
    pickup_latitude FLOAT, 
    dropoff_longitude FLOAT, 
    dropoff_latitude FLOAT, 
    distance FLOAT, 
    PRIMARY KEY (uber_id)
)
