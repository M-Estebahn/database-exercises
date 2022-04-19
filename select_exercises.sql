USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT * From albums WHERE release_date=1967;
SELECT * FROM albums WHERE  genre='Rock';
SELECT * From albums WHERE release_date<2000 && albums.release_date>1989;
SELECT * FROM albums WHERE sales<20000000