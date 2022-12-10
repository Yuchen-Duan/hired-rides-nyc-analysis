
CREATE TABLE IF NOT EXISTS hourly_weather 
(
    hourly_weather_id INTEGER PRIMARY KEY, 
    date TEXT, 
    hourlyPrecipitation REAL, 
    hourlyWindSpeed REAL
);

CREATE TABLE IF NOT EXISTS daily_weather 
(
    daily_weather_id INTEGER PRIMARY KEY, 
    date TEXT, 
    dailySustainedWindSpeed REAL
);

CREATE TABLE IF NOT EXISTS taxi_trips 
(
    taxi_id INTEGER INTEGER PRIMARY KEY, 
    pickup_datetime TEXT, 
    dropoff_datetime TEXT,
    tip_amount REAL,
    pickup_latitude REAL,
    pickup_longitude REAL,
    dropoff_latitude REAL,
    dropoff_longitude REAL,
    distance REAL, 
    
);

CREATE TABLE IF NOT EXISTS uber_trips 
(
    uber_id INTEGER INTEGER PRIMARY KEY, 
    pickup_datetime TEXT, 
    pickup_longitude REAL, 
    pickup_latitude REAL, 
    dropoff_longitude REAL, 
    dropoff_latitude REAL, 
    distance REAL
);
