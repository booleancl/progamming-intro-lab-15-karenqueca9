\c trucks

DROP TABLE IF EXISTS travels_detail;

CREATE TABLE travels_detail(
    id SERIAL,
    quantity INTEGER,
    unity VARCHAR(4),
    travel_id INTEGER NOT NULL,
    description TEXT,
    FOREIGN KEY(travel_id) REFERENCES travels(id),
    PRIMARY Key(id)
);