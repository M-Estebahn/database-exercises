USE employees;


SELECT last_name AS name, salary AS salary
FROM employees
	     JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT last_name AS name, salary AS salary, from_date AS startDate, to_date AS endDate
FROM employees
	     JOIN salaries ON employees.emp_no = salaries.emp_no;


SELECT CONCAT(first_name, ' ', last_name) AS name, salary AS salary, from_date AS startDate, to_date AS endDate
FROM employees e
	     JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY endDate DESC;


CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles
(
	id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE users
(
	id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
	name    VARCHAR(100) NOT NULL,
	email   VARCHAR(100) NOT NULL,
	role_id INT UNSIGNED DEFAULT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', NULL),
       ('mike', 'mike@example.com', NULL);

SELECT *
FROM join_test_db.users;


SELECT users.name AS user_name, roles.name
FROM users
	     LEFT JOIN roles ON users.role_id = roles.id;

USE codeup_test_db;

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
	                       `id` int unsigned NOT NULL AUTO_INCREMENT,
	                       `first_name` varchar(25) NOT NULL,
	                       `album_id` int unsigned NOT NULL,
	                       PRIMARY KEY (`id`),
	                       KEY `album_id` (`album_id`),
	                       CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `persons` VALUES (1,'Olivia',29),(2,'Santiago',27),(3,'Tareq',15),(4,'Anaya',28);