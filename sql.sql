CREATE DATABASE db;




DROP DATABASE db;




CREATE TABLE tb(
	id int,
    name varchar(255)
);




DROP TABLE tb;




TRUNCATE TABLE tb2;




SELECT * FROM categories;




SELECT * FROM categories
WHERE categoryid%2=0;




SELECT * FROM customers
ORDER BY customerid DESC;




SELECT DISTINCT city FROM customers;




SELECT DISTINCT city,country
FROM customers;




SELECT COUNT(DISTINCT city) FROM customers;




SELECT * FROM customers
WHERE country="germany";




SELECT address,city FROM customers
WHERE country="germany";




SELECT address,city FROM customers
WHERE country="germany"
ORDER BY city;




SELECT address,city FROM customers
WHERE country="germany"
ORDER BY city DESC;




SELECT address,city from customers
WHERE country="germany"
order BY city ASC, address DESC;




SELECT * FROM customers
WHERE country="uk" and city="london";




SELECT * FROM customers
WHERE country="uk" AND (customerid<5 or customerid>10);



SELECT * FROM customers
WHERE country="uk" or country="spain" or country LIKE "A%";




SELECT * FROM customers
WHERE city NOT IN ("london");




SELECT * FROM customers
WHERE customerid BETWEEN 5 AND 10;




SELECT * FROM suppliers
WHERE contactname like "C_%";




SELECT * FROM suppliers
WHERE contactname like "C_%" or contactname LIKE "Pe%";




SELECT * FROM customers LIMIT 5;




SELECT * FROM products WHERE
price<20 LIMIT 3;




SELECT max(price) FROM products;
SELECT min(price) FROM products;
SELECT AVG(price) FROM products;
SELECT SUM(price) FROM products;
SELECT COUNT(price) FROM products;
SELECT COUNT(DISTINCT supplierid) FROM products;
SELECT COUNT(DISTINCT supplierid) AS cnt FROM products;




INSERT INTO blog
(title,content) VALUES ("please","essay");

INSERT INTO blog
VALUES(20,"pray","quite");

INSERT INTO blog
(title,content)
VALUES("yes","abc"),
("no","xyz"),
("me","you");