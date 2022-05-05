\c trucks

DROP TABLE IF EXISTS drivers;

CREATE TABLE drivers(
    id SERIAL,
    name VARCHAR(30),
    last_name VARCHAR(30),
    rut VARCHAR(12) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);