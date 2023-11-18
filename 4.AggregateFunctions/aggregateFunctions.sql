SELECT COUNT(*) FROM books; -- Returns count here its 19
SELECT COUNT(author_fname) FROM books -- Returns 19;
SELECT COUNT(DISTINCT author_fname) FROM books; -- Returns 12 avoids duplicate;