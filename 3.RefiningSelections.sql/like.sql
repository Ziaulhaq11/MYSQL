# WHERE author_fname LIKE "%da%"
SELECT * FROM books WHERE author_fname LIKE "%dav%"; -- which contains these characters
SELECT * FROM books WHERE author_fname LIKE "dav%"; -- which starts with these chars

SELECT * FROM books WHERE title LIKE "the"; -- contains exact the word which no prefix and suffix
SELECT * FROM books WHERE title LIKE "%the"; -- which ends with these chars
SELECT * FROM books WHERE title LIKE "%the%"; -- which contains these characters

% -- means anything
_ -- means number

SELECT title, stock_quantity FROM books WHERE title LIKE "___"; -- "_" means 1 digt long,___ means 3 digit long
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE "____";
(235)234-0987 -- "(___)___-___"

SELECT title FROM books WHERE title LIKE "%\%%"; -- Searching %character in 
SELECT title FROM books WHERE title LIKE "%\_%"; -- _ character search

