\c trucks

INSERT INTO locals(number, address)
VALUES 
(1, 'Los manzanos 12'),
(2, 'Los plátanos 11'),
(3, 'Los kiwis 19') 
RETURNING * 