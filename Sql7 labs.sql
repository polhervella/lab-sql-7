-- Labs 7

-- 1. In the table actor, which are the actors whose last names are not repeated? 

SELECT last_name, COUNT(last_name) as reps
FROM sakila.actor
GROUP BY last_name
HAVING reps = 1;

-- missing the first_name here...

-- 2. Which last names appear more than once? 

SELECT last_name, COUNT(last_name) as reps
FROM sakila.actor
GROUP BY last_name
HAVING reps > 1;

-- missing the first_name here...

-- 3. Using the rental table, find out how many rentals were processed by each employee.

SELECT staff_id, count(rental_id)
FROM sakila.rental
GROUP BY staff_id;

-- 4. Using the film table, find out how many films were released each year.

SELECT release_year, count(film_id)
FROM sakila.film
GROUP BY release_year;

-- 5. Using the film table, find out for each rating how many films were there.

SELECT rating, count(film_id)
FROM sakila.film
GROUP BY rating;

-- 6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places

SELECT rating, round(avg(length),2)
FROM sakila.film
GROUP BY rating;

-- 7. Which kind of movies (rating) have a mean duration of more than two hours?

SELECT rating
FROM sakila.film
GROUP BY rating
HAVING avg(length) > 120;
