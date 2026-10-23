__Table

CREATE TABLE venue_booking (
venue_booking_id INTEGER PRIMARY KEY,
event_id INTEGER NOT NULL REFERENCES events(event_id),
venue_id INTEGER NOT NULL REFERENCES venues(venue_id),
status VARCHAR(20) NOT NULL DEFAULT 'pending'
);

__Sample data

INSERT INTO venue_booking(venue_booking_id, event_id, venue_id, status)
VALUES ('1', '1', '1', 'pending');

INSERT INTO venue_booking(venue_booking_id, event_id, venue_id)
VALUES ('2', '1', '2');

__Check data

SELECT*FROM venue_booking;

__Rule test

INSERT INTO venue_booking(venue_booking_id, event_id, venue_id, status)
VALUES ('3', '1', '6', 'pending');