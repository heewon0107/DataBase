-- Active: 1728567401044@@127.0.0.1@3306
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_date DATE NOT NULL,
    total_amount REAL NOT NULL
);

PRAGMA table_info("orders")

INSERT INTO orders (order_date, total_amount)
VALUES
("2023-07-15", 50.99),
("2023-07-16", 75.5),
("2023-07-17", 30.25);

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    phone TEXT NOT NULL
);

INSERT INTO customers (name, email, phone)
VALUES
("허균", "h@naver.com", "111"),
("김영희", "yh@naver.com", "112"),
("이철수", "cs@naver.com", "113");

DELETE FROM orders WHERE order_id = 3;


UPDATE customers
SET name = "홍길동"
WHERE customer_id = 1;
SELECT * FROM customers;
SELECT * FROM orders;