USE employees;

SELECT * FROM employees
WHERE first_name ='Irena'or first_name='Vidya'or first_name='Maya';

SELECT * FROM employees
WHERE (first_name ='Irena'or first_name='Vidya'or first_name='Maya')AND(gender='M');

SELECT * FROM employees
WHERE last_name LIKE  'e%';

SELECT * FROM employees
WHERE last_name LIKE  'e%' or last_name like '%e';

SELECT * FROM employees
WHERE last_name like 'e%' and last_name like '%e';

SELECT * FROM employees
WHERE last_name like '%q%';

SELECT * FROM employees
WHERE last_name like '%q%' and last_name  NOT LIKE '%qu%';

