-- ================================================
-- Analysis: Long Duration Bike Trips in London
-- Dataset: bigquery-public-data.london_bicycles
-- Description: Trips lasting 20+ minutes (1200s)
-- Author: Fernando Freitas | Data Analyst
-- ================================================

SELECT
    duration,
    start_station_name
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE duration >= 1200
ORDER BY duration DESC;
