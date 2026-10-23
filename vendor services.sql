__Table

DROP TABLE IF exists vendor_services;

CREATE TABLE vendor_services (
service_id INTEGER PRIMARY KEY,
vendor_id INTEGER NOT NULL REFERENCES vendors(vendor_id),
service_name VARCHAR NOT NULL,
price NUMERIC(12,2) CHECK (price > 0)
);

__Check data

SELECT*FROM vendor_services;

__Sample data
INSERT INTO vendor_services(service_id, vendor_id, service_name, price)
VALUES ('1', '1', 'small chops', '250000');

INSERT INTO vendor_services(service_id, vendor_id, service_name, price)
VALUES ('2', '2', 'Live band', '250000');

__Rule test
INSERT INTO vendor_services(service_id, vendor_id, service_name, price)
VALUES ('2', '5', 'Live band', '250000');


INSERT INTO vendor_services(service_id, vendor_id, service_name, price)
VALUES ('3', '5', 'Decor', '250000');
