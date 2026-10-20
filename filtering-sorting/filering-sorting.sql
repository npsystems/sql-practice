-- Problem 1: List all directors of Pixar movies alphabetically, without duplicates.

SELECT DISTINCT director
FROM movies
ORDER BY director ASC;


-- Problem 2: List the last four Pixar movies released, from most recent to least recent.

SELECT title, year
FROM movies
ORDER BY year DESC
LIMIT 4;


-- Problem 3: List the first five Pixar movies sorted alphabetically.

SELECT title
FROM movies
ORDER BY title ASC
LIMIT 5;


-- Problem 4: List the next five Pixar movies sorted alphabetically.

SELECT title
FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;