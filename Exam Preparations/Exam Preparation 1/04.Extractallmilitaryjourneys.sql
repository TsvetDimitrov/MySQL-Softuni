-- 04. Extract all military journeys --

SELECT id, journey_start, journey_end FROM journeys
WHERE purpose = 'Military'
ORDER BY journey_start;