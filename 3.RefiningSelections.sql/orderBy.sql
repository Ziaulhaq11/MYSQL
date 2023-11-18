# ORDER -- it is alphaNumeric as well. So number will be first then alphabets -- ASC by default
SELECT DISTINCT author_lname FROM books ORDER BY author_lname;
SELECT author_lname FROM books ORDER BY author_lname;
SELECT title FROM books ORDER BY title;
SELECT released_year FROM books ORDER BY released_year;

SELECT author_lname FROM books ORDER BY author_lname DESC;
SELECT released_year FROM books ORDER BY released_year DESC;
SELECT title,author_fname,author_lname FROM books ORDER BY 2; 
#Number refers to column which we wrote here in our SELECT columns not by COLUMNS of TABLE