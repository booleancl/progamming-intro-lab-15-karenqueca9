\c trucks

INSERT INTO travels(local_id, truck_id, ramp_id, driver_id, arrival_time, departure_time,return_time)
VALUES
(1, 1, 1, 1, '2022-01-03 19:10', '2022-01-06 15:24', '2022-01-06 17:14'),
(2, 2, 2, 2, '2022-01-05 14:10', '2022-01-06 13:14', '2022-01-09 19:14'),
(3, 3, 3, 3, '2022-02-15 17:40', '2022-02-21 18:34', '2022-02-22 11:39')
RETURNING *