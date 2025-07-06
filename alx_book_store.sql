
---Create database if not exist

CREATE DATABASE IF NOT EXISTS alx_book_store;

---select the database

USE alx_book_store;

---Create the authors table COMMENT
CREATE TABLE authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
    );

---create the books table
CREATE TABLE Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY(author_id ) REFERENCES AUTHORS (author_id)
);

---create costumer table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_address VARCHAR(215) NOT NULL,
    email VARCHAR(215) NUT NULL,
    adress TEXT
);

-- Create the ORDERS table

CREATE TABLE orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- Create the ORDER_DETAILS table
CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)