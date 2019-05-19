CREATE DATABASE productsdb;

SHOW DATABASES;

USE productsdb;

-- TABLE PRODUCTS
CREATE TABLE products( 
	id INT(11) AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255),
	price DECIMAL,
	stock INT
);

SHOW TABLES;

-- TEST DATA
INSERT INTO products(name, price, stock)
	VALUES("laptop", 400, 40);

INSERT INTO products(name, price, stock)
	VALUES("mouse", 100, 10);
