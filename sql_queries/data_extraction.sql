-- =====================================================
-- ANÁLISIS DE VIAJES EN TAXI DE CHICAGO - ZUBER
-- Consultas SQL para extracción y análisis de datos
-- Proyecto: Sprint 8 - TripleTen
-- =====================================================

-- -----------------------------------------------------
-- CONSULTA 1: ANÁLISIS DE EMPRESAS DE TAXI
-- Objetivo: Obtener número de viajes por empresa
-- Output: company_trips.csv
-- -----------------------------------------------------

SELECT
    cabs.company_name AS company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM
    cabs
    INNER JOIN trips ON cabs.cab_id = trips.cab_id
WHERE
    CAST(trips.start_ts AS date) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY
    cabs.company_name
ORDER BY
    trips_amount DESC;

-- -----------------------------------------------------
-- CONSULTA 2: ANÁLISIS DE VIAJES LOOP-O'HARE LOS SÁBADOS
-- Objetivo: Viajes del Loop a O'Hare los sábados con condiciones climáticas
-- -----------------------------------------------------
SELECT
    trips.start_ts AS start_ts,
    CASE WHEN weather_records.description LIKE '%rain%' OR weather_records.description LIKE '%storm%' THEN 'Bad'
    ELSE 'Good'
    END AS weather_conditions,
    trips.duration_seconds AS duration_seconds
FROM 
    trips
    INNER JOIN weather_records ON weather_records.ts = trips.start_ts
WHERE
    trips.pickup_location_id = 50
    AND trips.dropoff_location_id = 63
    AND EXTRACT(DOW FROM trips.start_ts) = 6
ORDER BY
    trips.trip_id;