-- Active: 1728530280064@@127.0.0.1@3306
SELECT * FROM users WHERE age < 18 ORDER BY age DESC;

SELECT last_name, age FROM users WHERE age < 18 ORDER BY last_name, age DESC;

SELECT DISTINCT last_name, age FROM users WHERE age < 18 ORDER BY last_name, age DESC;

