\c trucks

INSERT INTO drivers(name,last_name,rut)
VALUES
('Jose', 'Morales', '13.532.178-1'),
('Enrique', 'Caro', '15.545.273-8'),
('Juan', 'Perez', '17.234.453-7')
RETURNING *