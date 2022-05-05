\c trucks

DROP TABLE IF EXISTS trucks;

CREATE TABLE trucks(
    id SERIAL,
    license_plate VARCHAR(9),
    PRIMARY KEY(id)
);