-- Active: 1728565693542@@127.0.0.1@3306
ALTER TABLE departments
RENAME COLUMN
name TO department;

SELECT department, name AS oldest_employee, max(age) AS max_age, avg(age) AS avg_age FROM employees INNER JOIN departments ON departments.id = employees."departmentId" GROUP BY department;

SELECT department, name AS highest_paid_employee, max(salary) AS max_salary FROM employees INNER JOIN departments ON departments.id = employees."departmentId" GROUP BY department;

SELECT department, CASE
    WHEN age <= 29 THEN 'UNDER 30'
    WHEN age BETWEEN 30 AND 40 THEN 'BETWEEN 30- 40'
    ELSE 'OVER 40'
  END AS age_group, count() AS num_employee FROM employees INNER JOIN departments ON departments.id = employees."departmentId" GROUP BY age;

SELECT * FROM employees;

INSERT INTO employees (name, salary, age, "departmentId")
VALUES 
("유관순", 82000, 53, 4),
("윤재은", 50000, 35, 3),
("윤작가", 50000, 42, 1),
("김구", 126000, 28, 2);

SELECT department, AVG(salary) AS avg_salary_exclude_high 
FROM employees 
INNER JOIN departments ON departments.id = employees."departmentId"
WHERE salary < (SELECT max(salary) FROM employees INNER JOIN departments ON departments.id = employees."departmentId" GROUP BY department)  
GROUP BY department;



