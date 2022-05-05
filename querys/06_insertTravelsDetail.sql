\c trucks

INSERT INTO travels_detail(quantity, unity, description, travel_id)
VALUES
(1, 'boxs','sugar from Perú', 2 ),
(65, 'boxs','apples from Colombia', 2 ),
(5, 'boxs','mariscos from Chile', 1 ),
(63, 'boxs','cafe from Turquia', 3 )
RETURNING *