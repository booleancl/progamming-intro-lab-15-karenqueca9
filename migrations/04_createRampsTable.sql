\c trucks

DROP TABLE IF EXISTS ramps;

CREATE TABLE ramps(
    id SERIAL,
    license_plate VARCHAR(9),
    PRIMARY KEY (id)
);