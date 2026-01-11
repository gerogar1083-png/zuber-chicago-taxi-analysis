-- =====================================================
-- CONSULTAS EXPLORATORIAS - PROCESO DE APRENDIZAJE
-- =====================================================

-- -----------------------------------------------------
-- Empresas con "Yellow" o "Blue" (1-7 noviembre 2017)
-- -----------------------------------------------------
SELECT
    cabs.company_name AS company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM
    cabs
    INNER JOIN trips ON cabs.cab_id = trips.cab_id
WHERE
    (cabs.company_name LIKE '%Yellow%'
    OR cabs.company_name LIKE '%Blue%')
    AND CAST(trips.start_ts AS date) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY
    company_name;

-- -----------------------------------------------------
-- Número de viajes entre las empresas Flash Cab y Taxi Affiliation Services 
-- Estas son las dos empresas más populares
-- -----------------------------------------------------
SELECT
    CASE 
    WHEN cabs.company_name = 'Flash Cab' THEN 'Flash Cab'
    WHEN cabs.company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services'
    ELSE 'Other'
    END AS company,
    COUNT(trips.trip_id) AS trips_amount
FROM
    cabs
    INNER JOIN trips ON cabs.cab_id = trips.cab_id
WHERE
    CAST(trips.start_ts AS date) BETWEEN '2017-11-01' AND '2017-11-07'
GROUP BY
    company
ORDER BY
    trips_amount DESC;
    -- -----------------------------------------------------
-- Identificación de barrios estratégicos: O'Hare (aeropuerto) y Loop (centro).
-- Estos barrios son puntos de referencia importantes para el análisis de taxis.
-- -----------------------------------------------------
SELECT
    neighborhoods.neighborhood_id AS neighborhood_id,
    neighborhoods.name AS name
FROM
    neighborhoods
WHERE
    neighborhoods.name LIKE '%Hare'
    OR
    neighborhoods.name LIKE 'Loop';