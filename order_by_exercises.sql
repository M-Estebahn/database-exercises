USE employees;


SELECT * FROM employees
WHERE first_name ='Irena'or first_name='Vidya'or first_name='Maya'
ORDER BY first_name;

SELECT * FROM employees
WHERE first_name ='Irena'or first_name='Vidya'or first_name='Maya'
ORDER BY first_name , last_name;

SELECT * FROM employees
WHERE first_name ='Irena'or first_name='Vidya'or first_name='Maya'
ORDER BY last_name , first_name;

SELECT * FROM employees
WHERE first_name ='Irena'or first_name='Vidya'or first_name='Maya'
order by first_name;

SELECT * FROM employees
WHERE (first_name ='Irena'or first_name='Vidya'or first_name='Maya')AND(gender='M');

SELECT * FROM employees
WHERE last_name LIKE  '%e%'
Order by emp_no;

SELECT * FROM employees
WHERE last_name LIKE  '%e%'
Order by emp_no DESC ;

SELECT * FROM employees
WHERE last_name LIKE  'e%' or last_name like '%e';

SELECT * FROM employees
WHERE last_name LIKE 'e%' and last_name like '%e';

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE last_name LIKE '%q%' and last_name  NOT LIKE '%qu%';
