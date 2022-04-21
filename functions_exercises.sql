USE employees;


SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name;

SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND (gender = 'M');

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name'
FROM employees
WHERE first_name LIKE 'e%'
   OR first_name LIKE 'e%';

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';


SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT CONCAT(first_name, ' ', last_name, ' Has been working here for ', DATEDIFF(CURDATE(), hire_date),
              ' days') AS 'Time Served'
FROM employees
WHERE birth_date LIKE '%12-25'
  AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC;