__ TABLE

DROP TABLE IF EXISTS clients;

CREATE TABLE clients (
client_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL,
phone VARCHAR(20) NOT NULL,
email VARCHAR(50) UNIQUE
);

__ Sample data

INSERT INTO CLIENTS (client_id, name, phone, email)
VALUES (1, 'Ogundare Kemi', '08022334455', 'kemi@kmail.com');

INSERT INTO clients (client_id, name, phone, email)
VALUES (2, 'Onafeso Bukunmi', '09033557799', 'bukun@hmail.com');

__Check data

SELECT * FROM clients;

__Rule test 

INSERT INTO clients (client_id, name, phone, email)
VALUES (1, NULL, 07022446688, kemi@kmail.com);

INSERT INTO clients (client_id, name, phone, email)
VALUES (3, 'NULL', '07022446688', 'kemi@kmail.com');

INSERT INTO clients( client_id, name, phone, email)
VALUES (1, 'Akins Biola', '08122446677', 'abies@hmail.com');
