\c trucks

DROP TABLE IF EXISTS travels;

CREATE TABLE travels(
    id SERIAL,
    driver_id INTEGER NOT NULL,
    local_id INTEGER NOT NULL,
    ramp_id INTEGER NOT NULL,
    truck_id INTEGER NOT NULL,
    arrival_time TIMESTAMP,
    departure_time TIMESTAMP,
    return_time TIMESTAMP,
    FOREIGN KEY(driver_id) REFERENCES drivers(id),
    FOREIGN Key(local_id) REFERENCES locals(id),
    FOREIGN KEY(ramp_id) REFERENCES ramps(id),
    FOREIGN KEY(truck_id) REFERENCES trucks(id),
    PRIMARY KEY(id)
);