__Table

CREATE TABLE payments (
payment_id INTEGER PRIMARY KEY,
event_id INTEGER NOT NULL REFERENCES events(event_id),
amount NUMERIC(12,2) NOT NULL CHECK (amount > 0),
payment_date DATE NOT NULL DEFAULT CURRENT_DATE,
method VARCHAR(100) NOT NULL,
receipt_number  INTEGER NOT NULL UNIQUE
);

__Sample data

INSERT INTO payments(payment_id, event_id, amount, payment_date, method, receipt_number)
VALUES ('5001', '1', '5000000', '2026-11-01', 'bank transfer', 202051);

INSERT INTO payments(payment_id, event_id, amount, payment_date, method, receipt_number)
VALUES ('5003', '4', '10000000', '2026-11-01', 'cheque', 202052);

INSERT INTO payments(payment_id, event_id, amount, payment_date, method, receipt_number)
VALUES ('5005', '5', '10000000', '2027-01-01', 'cash', 202053);

__Rule test
INSERT INTO payments(payment_id, event_id, amount, payment_date, method, receipt_number)
VALUES ('5007', '2', '-5000', '2027-01-01', 'cash', 202054);

INSERT INTO payments(payment_id, event_id, amount, payment_date, method, receipt_number)
VALUES ('5009', '3', '55000000', '2028-01-01', 'transfer', 202051);

__Check data
SELECT*FROM payments;
