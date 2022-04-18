CREATE DATABASE IF NOT EXISTS blog_app;
-- pluralizing the name of the table
USE blog_app;

# creating a table
CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR (100),
    job_title VARCHAR (100),
    address VARCHAR (200),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)

);
# DESC ONLY WORKS IN IN MYSQL, OTHER SQL USE SHOW
#SHOW / DESCRIBE TABLES

DESC users;

#DROPPING TABLE
DROP TABLE blog_app.users;

