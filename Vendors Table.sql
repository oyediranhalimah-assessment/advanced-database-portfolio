__ TABLE
CREATE TABLE  vendors(
vendor_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL,
category VARCHAR(200) NOT NULL,
contact VARCHAR(20)
);

__ Sample data 

INSERT INTO vendors (vendor_id, name, category, contact)
VALUES (1, 'Ajoke fabrics', 'fabric supplier', '06035674568');

INSERT INTO vendors (vendor_id, name, category, contact)
VALUES (2, 'tasty foods', 'caterer', '04035677558');


INSERT INTO vendors (vendor_id, name, category, contact)
VALUES (3, 'Broad rentals', 'rentals company', '02053667559');

__Check data

SELECT*FROM vendors;

__Rule test 

INSERT INTO vendors (vendor_id, name, category, contact)
VALUES (4, 'street chops', NULL, 02053667565);




















































