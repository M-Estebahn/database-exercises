USE employees;

SELECT emp_no from dept_manager;

SELECT birth_date FROM employees WHERE emp_no IN (SELECT emp_no from dept_manager);

SELECT concat(first_name,' ',last_name), birth_date
FROM employees WHERE emp_no in (SELECT emp_no from dept_manager);



use codeup_test_db;

SELECT * FROM preferences;

insert into preferences (person_id, album_id) VALUES ((SELECT id FROM persons WHERE first_name like 'tareq'),(SELECT id FROM albums WHERE name like '%Book%'));


SELECT first_name, name
FROM persons JOIN preferences p ON persons.id = p.person_id JOIN albums a ON a.id = p.album_id ;

UPDATE preferences set album_id= (SELECT id from albums where name like'tana%') WHERE album_id=(SELECT id FROM albums WHERE name like '%Book%') AND person_id=(SELECT id FROM persons WHERE first_name like 'tareq')