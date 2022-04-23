USE employees;

SELECT CONCAT(first_name, ' ', last_name), hire_date
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = '101010');

SELECT DISTINCT title
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');





SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees e
WHERE e.emp_no in (SELECT emp_no from dept_manager where to_date like '9%' and gender = 'f');


# 	     JOIN dept_manager dm ON e.emp_no = dm.emp_no
# WHERE dm.to_date LIKE '9999%'
#   AND e.gender = 'f';


SELECT dept_name AS department
FROM departments d
WHERE dept_no in (SELECT dept_no from dept_manager where emp_no in(SELECT emp_no from employees where gender ='f')and to_date like '9%');


# 	     JOIN dept_emp de ON d.dept_no = de.dept_no
# 	     JOIN employees e ON e.emp_no = de.emp_no
# 	     JOIN dept_manager dm ON e.emp_no = dm.emp_no
# WHERE dm.to_date LIKE '9999%'
#   AND e.gender = 'f';

SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees
WHERE emp_no in (SELECT emp_no from salaries s WHERE to_date like '9%' and salary in(SELECT max(salary) from salaries))



# 	     JOIN salaries s ON employees.emp_no = s.emp_no
# ORDER BY salary DESC
# LIMIT 1




