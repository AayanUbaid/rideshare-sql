-- Queries for the rideshare practice database (PostgreSQL)

-- 1. Look at the three tables
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

-- 2. Cross join: every rider paired with every car
SELECT *
FROM riders
CROSS JOIN cars;

-- 3. Trip log: all trips, with rider details when available (LEFT JOIN)
SELECT *
FROM trips
LEFT JOIN riders
    ON trips.rider_id = riders.id;

-- 4. Trips with their car details (INNER JOIN)
SELECT *
FROM trips
INNER JOIN cars
    ON trips.car_id = cars.id;

-- 5. Stack two rider tables together (UNION ALL)
SELECT * FROM riders
UNION ALL
SELECT * FROM riders2;

-- 6. Average cost per trip
SELECT AVG(cost) AS average_cost
FROM trips;

-- 7. Riders with fewer than 500 total trips
SELECT *
FROM riders
WHERE total_trips < 500;

-- 8. Number of active cars
SELECT COUNT(*) AS active_cars
FROM cars
WHERE status = 'active';

-- 9. Top 2 cars by trips completed
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
