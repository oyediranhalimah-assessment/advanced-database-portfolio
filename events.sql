__Table

CREATE TABLE events (
event_id INTEGER PRIMARY KEY,
client_id INTEGER NOT NULL REFERENCES clients(client_id),
event_type VARCHAR(50) NOT NULL,
event_date DATE NOT NULL,
location VARCHAR(100),
budget NUMERIC(12,2) CHECK (BUDGET > 0),
expected_guests INTEGER CHECK (expected_guests >= 0)
);

__Sample data

INSERT INTO events (event_id, client_id, event_type, event_date, location, budget, expected_guests)
VALUES (1, '1', 'birthday', '2026-11-01', 'ikeja lagos', 5000000, 500);

INSERT INTO events (event_id, client_id, event_type, event_date, location, budget, expected_guests)
VALUES (2, '1', 'bridal shower', '2027-02-04', 'lekki lagos', 1000000, 12);

INSERT INTO events (event_id, client_id, event_type, event_date, location, budget, expected_guests)
VALUES (3, '1', 'civil wedding', '2027-07-07', 'ikoyi lagos', 2000000, 50);

INSERT INTO events (event_id, client_id, event_type, event_date, location, budget, expected_guests)
VALUES (4, '2', 'Traditional wedding', '2027-05-07', 'Ibadan', 4000000, 200);

INSERT INTO events (event_id, client_id, event_type, event_date, location, budget, expected_guests)
VALUES (5, '2', 'Church wedding', '2027-08-10', 'Ikorodu Lagos', 7000000, 1000);

__Check data
SELECT*FROM events;

__Rule test
INSERT INTO events (event_id, client_id, event_type, event_date, location, budget, expected_guests)
VALUES (6, '3', 'birthday', '2026-11-01', 'ikeja lagos', 2000000, 100);

