--
BEGIN;
INSERT INTO venue_booking (venue_booking_id, event_id, venue_id)
VALUES (102, 1, 2);
SELECT * FROM venue_booking;


--
ROLLBACK;

--
SELECT * FROM venue_booking;

--
BEGIN;
INSERT INTO venue_booking (venue_booking_id, event_id, venue_id)
VALUES (101, 1, 1);
INSERT INTO payments (payment_id, event_id, amount, payment_date, method, receipt_number)
VALUES (6001, 1, 200000, '2026-11-01', 'bank transfer', 202060);
COMMIT;

--
SELECT * FROM venue_booking;

--
SELECT * FROM payments;

--
ROLLBACK;

--

SELECT * FROM venue_booking;

--isolation (two separate tabs)
-- Tab A:
BEGIN;
UPDATE venues SET price = price + 50000 WHERE venue_id = 1;
SELECT venue_id, name, price FROM venues WHERE venue_id = 1;

-- Tab B (run while Tab A is still open): shows the OLD price
SELECT venue_id, name, price FROM venues WHERE venue_id = 1;


--
BEGIN;

UPDATE venues SET price = price + 50000 WHERE venue_id = 1;

-- in tab B

UPDATE venues SET price = price + 10000 WHERE venue_id = 1;

-- in tab A


SELECT venue_id, name, price FROM venues WHERE venue_id = 1;

UPDATE venues SET price = price - 60000 WHERE venue_id = 1;
