# SELECT title FROM books LIMIT 3;
# SELECT * FROM books LIMIT 10;
# SELECT title, released_year FROM books ORDER BY 2 LIMIT 5;
# SELECT title, released_year FROM books ORDER BY 2 DESC LIMIT 5;
# SELECT title, released_year FROM books ORDER BY 2 LIMIT 0,10; 1-10 rows
# SELECT title, released_year FROM books ORDER BY 2 LIMIT 1,5; # it means from row 1 and limit is 5 ; 2-6 rows
SELECT title, released_year FROM books ORDER BY 2 LIMIT 10,1; # it will print only 1 value : 11th row
