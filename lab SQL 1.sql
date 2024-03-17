-- Display all available tables
SHOW TABLES;

-- Retrieve all data from the tables actor, film, and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve specific columns from their respective tables
-- Titles of all films from the film table
SELECT title FROM film;

-- List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- Counting records for database insights
-- Determine the number of stores that the company has
SELECT COUNT(*) AS num_stores FROM store;

-- Determine the number of employees that the company has
SELECT COUNT(*) AS num_employees FROM staff;

-- Determine how many films are available for rent and how many have been rented
SELECT 
    SUM(CASE WHEN inventory_id IN (SELECT inventory_id FROM rental) THEN 1 ELSE 0 END) AS rented_films,
    COUNT(*) AS total_films
FROM inventory;

-- Determine the number of distinct last names of the actors in the database
SELECT COUNT(DISTINCT last_name) AS num_distinct_last_names FROM actor;

-- Retrieve the 10 longest films
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

-- Use filtering techniques
-- Retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor WHERE first_name = 'SCARLETT';
