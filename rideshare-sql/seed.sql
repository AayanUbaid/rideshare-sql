-- Sample data (made up). Run once, after schema.sql.
INSERT INTO riders (id, first, last, username, rating, total_trips, referred) VALUES
(101, 'Amna',  'Khan',   '@amnakhan',  4.70, 320,  NULL),
(102, 'Bilal', 'Ahmed',  '@bilalahmed', 4.95, 710, 101),
(103, 'Hira',  'Siddiqui','@hirasid',  4.60, 45,   NULL),
(104, 'Zain',  'Malik',  '@zainmalik', 4.50, 1850, 103);

INSERT INTO riders2 (id, first, last, username, rating, total_trips, referred) VALUES
(201, 'Sara',  'Ali',    '@saraali',   4.80, 120,  NULL),
(202, 'Usman', 'Raza',   '@usmanraza', 4.55, 610,  201);

INSERT INTO cars (id, model, os, status, trips_completed) VALUES
(1, 'Falcon',   'Zorin',  'active',      85),
(2, 'Falcon',   'Zorin',  'active',      32),
(3, 'Orion XL', 'Zorin',  'active',      160),
(4, 'Nova',     'Kernix', 'maintenance', 20);

INSERT INTO trips (id, date, pickup, dropoff, rider_id, car_id, type, cost) VALUES
(1001, '2026-01-05', '06:45', '07:10', 102, 1, 'X',    28.50),
(1002, '2026-01-05', '08:00', '08:15', 101, 3, 'POOL',  9.20),
(1003, '2026-01-05', '09:30', '09:50', 104, 4, 'X',    25.00),
(1004, '2026-01-05', '13:40', '14:05', 105, 1, 'X',    31.10),
(1005, '2026-01-05', '15:15', '16:00', 103, 2, 'POOL', 19.00),
(1006, '2026-01-05', '18:20', '18:55', 101, 3, 'XL',   78.40);
