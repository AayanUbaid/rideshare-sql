-- Schema for the rideshare practice database (PostgreSQL)
CREATE TABLE riders (
    id          INTEGER PRIMARY KEY,
    first       TEXT,
    last        TEXT,
    username    TEXT,
    rating      NUMERIC(3,2),
    total_trips INTEGER,
    referred    INTEGER
);

CREATE TABLE riders2 (
    id          INTEGER PRIMARY KEY,
    first       TEXT,
    last        TEXT,
    username    TEXT,
    rating      NUMERIC(3,2),
    total_trips INTEGER,
    referred    INTEGER
);

CREATE TABLE cars (
    id              INTEGER PRIMARY KEY,
    model           TEXT,
    os              TEXT,
    status          TEXT,
    trips_completed INTEGER
);

CREATE TABLE trips (
    id       INTEGER PRIMARY KEY,
    date     DATE,
    pickup   TIME,
    dropoff  TIME,
    rider_id INTEGER,
    car_id   INTEGER,
    type     TEXT,
    cost     NUMERIC(6,2)
);
