__
SELECT event_type, event_date, location FROM events WHERE event_date >= '2026-01-01' AND event_date < '2027-01-01' ORDER BY event_date;


__
SELECT payment_id, amount, receipt_number FROM payments WHERE amount > 6000000;


__
SELECT events.event_type, events.event_date, clients.name FROM events JOIN clients ON events.client_id = clients.client_id;

__
SELECT payments.amount, payments.receipt_number, events.event_type FROM events JOIN payments ON events.event_id = payments.event_id;