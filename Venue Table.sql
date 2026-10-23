__ TABLE

DROP TABLE IF EXISTS venues;

CREATE TABLE  venues(
venue_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL,
address VARCHAR(200) NOT NULL,
capacity INTEGER CHECK (capacity > 0),
price NUMERIC (12,2) CHECK (price >= 0)
);

__ Sample data 

INSERT INTO venues (venue_id, name, address, capacity, price)
VALUES (1, 'culture event center', '26 road aguda', 2000, 1500000);


INSERT INTO venues (venue_id, name, address, capacity, price)
VALUES (2, 'joyful event garden', 'road 10 ikeja', 150, 750000);


INSERT INTO venues (venue_id, name, address, capacity, price)
VALUES (3, 'event hall space', 'km 20 ibd', 3000, 5000000);

__Check data

SELECT* FROM venues;

__Rule test 

INSERT INTO venues (venue_id, name, address, capacity, price)
VALUES (4, 'Sunshine hall', 'kano road', 0, 10000);

INSERT INTO venues (venue_id, name, address, capacity, price)
VALUES (5, NULL, '16 blis street', 500, 450000);



