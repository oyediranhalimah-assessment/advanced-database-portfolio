--Payment join

SELECT payments.amount, payments.receipt_number, events.event_type FROM events JOIN payments ON events.event_id = payments.event_id;


--Event join
SELECT events.event_type, events.event_date, clients.name FROM events JOIN clients ON events.client_id = clients.client_id;



--Data generated
-- Bulk invented data for performance testing
INSERT INTO events (event_id, client_id, event_type, event_date, location, budget, expected_guests)
SELECT
    g,
    1 + (g % 2),
    (ARRAY['Birthday', 'Bridal shower', 'Baby shower', 'Traditional wedding'])[1 + (g % 4)],
    DATE '2026-01-01' + (g % 700),
    (ARRAY['Lagos', 'Abuja', 'Ibadan', 'Port Harcourt'])[1 + (g % 4)],
    100000 + g,
    50
FROM generate_series(1000, 101000) AS g;

ANALYZE events;



--Explain analyze
EXPLAIN ANALYZE SELECT * FROM events WHERE event_date = '2026-06-15';

--Create index
CREATE INDEX idx_events_event_date ON events (event_date);

