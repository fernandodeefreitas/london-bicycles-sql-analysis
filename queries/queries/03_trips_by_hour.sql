-- ================================================
-- Analysis: Trip Volume by Hour of Day
-- Dataset: bigquery-public-data.london_bicycles
-- Description: When do Londoners cycle the most?
-- Author: Fernando Freitas | Data Analyst
-- ================================================

SELECT
    EXTRACT(HOUR FROM start_date) AS hour_of_day,
    COUNT(rental_id) AS total_trips
FROM `bigquery-public-data.london_bicycles.cycle_hire`
GROUP BY hour_of_day
ORDER BY hour_of_day ASC;
