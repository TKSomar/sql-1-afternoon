-- Table - person

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    age INTEGER,
    height INTEGER,
    city VARCHAR(200),
    favorite_color VARCHAR(200)
);

INSERT INTO person
( name, age, height, city, favorite_color )
VALUES
('Vishnu Trimurti', 6000, 185, 'Shambhala', 'purple');

INSERT INTO person
( name, age, height, city, favorite_color )
VALUES
('Odin Wotan', 12800, 195, 'Valhalla', 'green');

INSERT INTO person
( name, age, height, city, favorite_color )
VALUES
('Chthonian Zeus', 16000, 200, 'Elysium', 'blue');

INSERT INTO person
( name, age, height, city, favorite_color )
VALUES
('Ishtar Inanna', 6200, 182, 'Underworld', 'violet');

INSERT INTO person
( name, age, height, city, favorite_color )
VALUES
('Kali Shyama', 8000, 192, 'Shangri-La', 'gold');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20
OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red'
AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange'
OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ( 'orange', 'green', 'blue' );

SELECT * FROM person
WHERE favorite_color IN ( 'yellow', 'purple' );

-- Table - orders

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INTEGER
);

INSERT INTO orders
( person_id, product_name, product_price, quantity )
VALUES
( 32, 'Backpack', 45.70, 1 );

INSERT INTO orders
( person_id, product_name, product_price, quantity )
VALUES
( 56, 'Bamboo Flute', 67.50, 1 );

INSERT INTO orders
( person_id, product_name, product_price, quantity )
VALUES
( 32, 'Dragon Fruit', 32.67, 10 );

INSERT INTO orders
( person_id, product_name, product_price, quantity )
VALUES
( 56, 'Plantain', 0.50, 1 );

INSERT INTO orders
( person_id, product_name, product_price, quantity )
VALUES
( 56, 'Guava', 20.00, 45);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 32;

-- Table - artist

INSERT INTO artist
( name )
VALUES
( 'Enya' );

INSERT INTO artist
( name )
VALUES
( 'Apache Dream' );

INSERT INTO artist
( name )
VALUES
( 'Ramin Djwadi' );

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

-- Table - employee

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MIN(birth_date) FROM employee;

SELECT MAX(birth_date) FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- Table - invoice

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;