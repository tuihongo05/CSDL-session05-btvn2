CREATE DATABASE session05_btvn2;
USE session05_btvn2;

CREATE TABLE employees(
    emp_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    department VARCHAR(10)
    salary DECIMAL (20, 2)
);

SELECT
	department,
	COUNT(*)
FROM employees
GROUP BY department;

SELECT
	department,
	AVG(salary)
FROM employees
GROUP BY department;

SELECT
	department,
	COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) >3;

SELECT
	department,
	AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) >12000000;