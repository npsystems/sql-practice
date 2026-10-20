-- SQL Practice: Movies Table
-- Topics: Filtering and Sorting, Text Filtering

-- ==========================================
-- 1. FILTERING AND SORTING
-- ==========================================

-- Problem 1: Find the movie with an id of 6.
SELECT *
FROM movies
WHERE id = 6;


-- Problem 2: Find movies released between 2000
-- and 2010, inclusive.
SELECT title, year
FROM movies
WHERE year BETWEEN 2000 AND 2010;


-- Problem 3: Find movies NOT released between
-- 2000 and 2010, inclusive.
SELECT title, year
FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;


-- Problem 4: Find the first five Pixar movies
-- and their release years.
SELECT title, year
FROM movies
WHERE year IS NOT NULL
ORDER BY year ASC
LIMIT 5;


-- ==========================================
-- 2. FILTERING TEXT VALUES
-- ==========================================

-- Problem 5: Find all Toy Story movies.
SELECT *
FROM movies
WHERE title LIKE 'Toy Story%';


-- Problem 6: Find all movies directed by
-- John Lasseter.
SELECT *
FROM movies
WHERE director = 'John Lasseter';


-- Problem 7: Find all movies and their directors
-- that were NOT directed by John Lasseter.
SELECT title, director
FROM movies
WHERE director != 'John Lasseter';


-- Problem 8: Find movies whose titles begin
-- with 'WALL-'.
SELECT *
FROM movies
WHERE title LIKE 'WALL-%';