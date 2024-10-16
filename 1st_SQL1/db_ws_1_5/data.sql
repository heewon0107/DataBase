-- Active: 1728538039691@@127.0.0.1@3306
SELECT * FROM users WHERE age >= 30 and balance >= 1000;

SELECT * FROM users WHERE age <= 20 and balance <= 1000;

SELECT * 
FROM users 
WHERE first_name LIKE "현%" and country = "제주특별자치도" 
ORDER BY age DESC LIMIT 1;

SELECT *
FROM users
WHERE last_name = "박" AND
age >= 25
ORDER BY age
LIMIT 1;

SELECT *
FROM users
WHERE first_name = "재은" OR first_name = "영일"
ORDER BY balance DESC LIMIT 1;

SELECT *, Max(balance)
From users
GROUP BY country
ORDER BY balance DESC;

SELECT *
FROM users
WHERE age >= 30 and balance >= (SELECT avg(balance) FROM users WHERE age >= 30);