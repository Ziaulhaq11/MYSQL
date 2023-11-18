# CONCAT
SELECT CONCAT(author_fname, ' ', author_lname) from books;
SELECT CONCAT(author_fname, ' ', author_lname) AS 'fullName' from books;
SELECT author_fname as first, author_lname as last, CONCAT (author_fname, '' , author_lname) AS fullName FROM books;
SELECT CONCAT(title, '-', author_fname, '-', author_lname) from books; -- Prints all these data with "-" in between but it's repetitive to solve this we have "CONCAT_WS"
SELECT CONCAT_WS('-', title, author_fname, author_lname) from books;

#SUBSTRING
SELECT SUBSTRING('Hello World', 1, 4); --Prints from 1 to 4
SELECT SUBSTRING("Hello World", 7); //Now It starts from 7 and goes till end
SELECT SUBSTRING("Hello World", -3); -- Goes from end to whatever number given Result is "rld";
SELECT SUBSTRING(author_fname, 1, 5) FROM books;
SELECT SUBSTRING(author_fname, 1, 5) AS 'short_name' FROM books; 
SELECT CONCAT(SUBSTRING(title, 1, 5), "...") FROM books;

#REPLACE
SELECT REPLACE("Hello World", "Hell", "%$#@"); -- %$#@o World
SELECT REPLACE("Hello World", "l", "7"); -- It replaces "l" with "7"; He77o Wor7d
SELECT REPLACE("HellO World", "o", "*"); -- Only replaces small "o". It is case sensitive
SELECT REPLACE("Cheese bread coffee milk", " ", " and ");
SELECT REPLACE(title, "e", '3') FROM books;
SELECT CONCAT(SUBSTRING(REPLACE(title, "e", 3), 1, 10), "...") AS 'Short Title' FROM books;

# REVERSE
SELECT REVERSE("Hello World"); -- dlroW olleH
SELECT REVERSE(title) FROM books;

# CHAR_LENGTH
SELECT CHAR_LENGTH(title) from books;
SELECT author_fname, CHAR_LENGTH(author_fname) as length FROM books;
SELECT CONCAT(author_fname, " is " , CHAR_LENGTH(author_fname), ' characters long') as length FROM books;

SELECT UPPER("Hello World"); -- HELLO WORLD
SELECT LOWER("Hello World"); -- hello world
SELECT CONCAT('Upper Case titles are ', UPPER(title)) FROM books;

# Upper takes only one argument where as CONCAT takes multiples so do remind this when using

# Challenges
# Reverse and Uppercase the following Sentence. 
	# Why does my cat look at me with such hatred?
#What does this prints out
	SELECT REPLACE(CONCAT("I", " ", "like", " ", 'cats'), " ", '-'); -- I-like-cats
# Replace spaces in titles with "->" and table name should be title
# forwards and backwards table with author lastName original and reverse one
# Full author name in caps as this name
# blurb table name -- The NameSake was released in 2003
# Print book titles and length of each title -- title and character count.
# short title with "..."; author with lastName, firstName; quantity with quantity in stock;

# Solutions
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));
SELECT REPLACE(title, " ", "->") FROM books;
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;
SELECT UPPER(CONCAT(author_fname, " ", author_lname)) AS fullName FROM books;
SELECT CONCAT("The ", title, " was released in ", released_year) AS blurb FROM books;
SELECT title AS title, CHAR_LENGTH(title) AS "character count" FROM books;
SELECT CONCAT(SUBSTRING(title, 1, 10), "...") AS "short title",
	CONCAT(author_lname," ", author_fname) AS author,
	CONCAT(stock_quantity, " in stock") AS quantity FROM books;