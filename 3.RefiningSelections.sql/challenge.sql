# titles that contain stories
SELECT title from books WHERE title LIKE "%stories%";

# Find the largest book & Print out the Title and Page Count
SELECT title,pages from books ORDER BY pages DESC LIMIT 1;

# Print Summaray containing the title and year, for the 3 most recent books
SELECT CONCAT(title," - ",released_year) AS Summary FROM books ORDER BY released_year DESC LIMIT 3;

# Find all books with an author_lname that contains a space(" ") with title and author_lanem
SELECT title,author_lname FROM books WHERE author_lname LIKE "% %";

# Find 3 books with the Lowest Stock -- Select title, year and stock
SELECT title,released_year,stock_quantity FROM books ORDER BY stock_quantity,released_year DESC LIMIT 3;  

# Print title and authorLname, sorted first by author_lname and then by title
SELECT title,author_lname FROM books ORDER BY author_lname,title;
SELECT title,author_lname FROM books ORDER BY 2,1;

# Sorted Alphabetically by Last Name & My Favourite Actor is first,lastName
SELECT UPPER(CONCAT("My Favourite Author is ", author_fname, " ",author_lname, "!")) AS yell FROM books ORDER BY author_lname; 
SELECT CONCAT("MY FAOURITE AUTHOR IS ", UPPER(author_fname), " ",UPPER(author_lname), "!") AS yell FROM books ORDER BY author_lname; 