-- ================================================
-- Analysis: Most Popular Starting Stations
-- Dataset: bigquery-public-data.london_bicycles
-- Description: Top 10 stations by number of trips
-- Author: Fernando Freitas | Data Analyst
-- ================================================

SELECT
    start_station_name,
    COUNT(rental_id) AS total_trips,
    ROUND(AVG(duration) / 60, 2) AS avg_duration_minutes
FROM `bigquery-public-data.london_bicycles.cycle_hire`
GROUP BY start_station_name
ORDER BY total_trips DESC
LIMIT 10;
