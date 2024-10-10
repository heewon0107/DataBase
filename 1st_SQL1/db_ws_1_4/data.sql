-- Active: 1728534687797@@127.0.0.1@3306
SELECT * FROM users;
PRAGMA table_info("users");
SELECT AVG(age) FROM users;

SELECT country, count()
FROM users
GROUP BY country;

SELECT * FROM users ORDER BY balance DESC LIMIT 1;

SELECT country, avg(balance) FROM users GROUP BY country;

SELECT max(balance) - min(balance) FROM users ODESC LIMIT 100;