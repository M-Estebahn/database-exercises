USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist CHAR(100) NOT NULL ,
    name VARCHAR(100) NOT NULL ,
    release_date INT,
    sales FLOAT,
    genre CHAR(200),
    PRIMARY KEY (id)
);

DESCRIBE albums;

INSERT INTO albums(artist, name, release_date, genre)
VALUES ('Benny the Butcher','Tana Talk 4',2022,'Hip-Hop');

INSERT INTO albums(artist, name, release_date, genre)
 VALUES ('Joell Ortiz','Mona Lisa',2017,'Hip-Hop');

INSERT INTO albums(artist, name, release_date, genre)
VALUES ('Silk Sonic','An Evening With Silk Sonic',2021,'R&B');

INSERT INTO albums(artist, name, release_date, genre)
 VALUES ('Avenge Sevenfold','City of Evil',2005,'Rock');

INSERT INTO albums(artist, name, release_date, genre)
VALUES ('Slaughterhouse','Slaughterhouse',2009,'Hip-Hop');

INSERT INTO albums(artist, name, release_date, genre)
VALUES ('Benny the Butcher','Plugs I Met Vol 2',2021,'Hip-Hop'),
       ('Royce 5''9','The Book of Ryan',2017,'Hip-Hop'),
       ('Joell Oritz','The Rise and Fall of Slaughterhouse',2022,'Hip-Hop'),
       ('KXNG CROOKED','H.A.R.D', 2021,'Hip-Hop')


       SELECT * FROM albums WHERE release_date<2020;

UPDATE albums SET sales=100000000
WHERE  artist = 'Royce 5''9';


DESC albums;




