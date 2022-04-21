USE employees;

SELECT DISTINCT title FROM titles;

SELECT emp_no
FROM salaries
WHERE salary
ORDER BY salary DESC
LIMIT 5 ;

SELECT emp_no
FROM salaries
WHERE salary
ORDER BY salary DESC
LIMIT 5 OFFSET 45;

