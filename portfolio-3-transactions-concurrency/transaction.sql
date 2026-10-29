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