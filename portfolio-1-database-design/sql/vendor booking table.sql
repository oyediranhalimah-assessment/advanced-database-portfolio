__Table

CREATE TABLE vendor_bookings (
vendor_booking_id INTEGER PRIMARY KEY,
event_id INTEGER NOT NULL REFERENCES events(event_id),
vendor_id INTEGER NOT NULL REFERENCES vendors(vendor_id),
status VARCHAR(20) NOT NULL DEFAULT 'pending',
sourced_by VARCHAR(20) NOT NULL CHECK (sourced_by IN ('KnH', 'Client') )
);

__Sample data

INSERT INTO vendor_bookings(vendor_booking_id, event_id, vendor_id, status, sourced_by)
VALUES ('2001', '1', '1', 'pending','Client');


INSERT INTO vendor_bookings(vendor_booking_id, event_id, vendor_id, status, sourced_by)
VALUES ('2002', '2', '3', 'paid','KnH');

INSERT INTO vendor_bookings(vendor_booking_id, event_id, vendor_id, status, sourced_by)
VALUES ('2005', '5', '2', 'pending','KnH');


__Rule test
INSERT INTO vendor_bookings(vendor_booking_id, event_id, vendor_id, status, sourced_by)
VALUES ('2005', '10', '2', 'pending','KnH');

__Check data
SELECT*FROM vendor_bookings;
