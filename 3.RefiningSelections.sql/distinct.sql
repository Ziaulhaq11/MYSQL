# DISTINCT - Duplicates wont show.It comes right after SELECT
SELECT DISTINCT author_lname FROM books;
SELECT DISTINCT released_year FROM books;
SELECT DISTINCT author_lname, author_fname FROM books; -- Here If both first and last name combines duplicate then it is skipping that name. 
# But if only one of them is duplicate it is showing that;
SELECT DISTINCT CONCAT (author_lname,' ', author_fname) FROM books; -- Both will do the same identically

