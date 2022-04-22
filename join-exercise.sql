USE join_test_db;


INSERT INTO users (name, email, role_id)
VALUES ('eric', 'eric@example.com', 2),
       ('stan', 'stan@example.com', NULL),
       ('kyle', 'kyle@example.com', 2),
       ('kenny', 'kenny@example.com', 2);










USE employees;


#
# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees AS e
# 	     JOIN dept_emp AS de
# 	          ON de.emp_no = e.emp_no
# 	     JOIN departments AS d
# 	          ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01'
#   AND e.emp_no = 10001;


SELECT d.dept_name as 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees
	     JOIN dept_manager dm
	          ON employees.emp_no = dm.emp_no
	     JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE '9999%'
ORDER BY dept_name;

SELECT d.dept_name as 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees e
	     JOIN dept_manager dm
	          ON e.emp_no = dm.emp_no
	     JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date LIKE '9999%'
  AND e.gender = 'f'
ORDER BY dept_name;


SELECT title AS 'Title', COUNT(title) AS TOTAL
FROM titles
	     JOIN dept_emp de ON titles.emp_no = de.emp_no
WHERE dept_no ='d009' and titles.to_date like '9%'
and de.to_date like '9%'
GROUP BY title;







SELECT CONCAT(first_name, ' ', last_name) AS 'full name', d.dept_name, s.salary, e.birth_date
FROM employees e
	     JOIN dept_manager dm
	          ON e.emp_no = dm.emp_no
	     JOIN departments d ON d.dept_no = dm.dept_no
		JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9999%' and s.to_date like '9999%'
ORDER BY dept_name;

SELECT CONCAT(e.first_name, ' ' , e.last_name) AS Employee, d.dept_name AS Department, CONCAT(ee.first_name, ' ' , ee.last_name) AS Manager
FROM employees e
	     JOIN dept_emp de ON e.emp_no = de.emp_no
	     JOIN departments d ON d.dept_no = de.dept_no
	     JOIN dept_manager dm on d.dept_no = dm.dept_no
	     JOIN employees ee on dm.emp_no = ee.emp_no
WHERE YEAR(de.to_date) = 9999 AND YEAR(dm.to_date) = 9999;













