------------------
-- LAB 1-2 SQL --
------------------

-- 1. Use sakila database.
use sakila;

-- 2. Get all the data from tables `actor`, `film` and `customer`.
select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;

-- 3. Get film titles.
select title as film_titles from sakila.film;

-- 4. Get unique list of film languages under the alias `language`. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
select distinct name as languages from sakila.language;

-- 5.
  -- 5.1 Find out how many stores does the company have?
  select count(store_id) as stores from sakila.store;
  
  -- 5.2 Find out how many employees staff does the company have? 
  select count(staff_id) as employees from sakila.staff;
  
  -- 5.3 Return a list of employee first names only?
  select first_name from sakila.staff;
  
-- 6. Select all the actors with the first name ‘Scarlett’.
select first_name, last_name from sakila.actor where first_name = "Scarlett";
select count(first_name) from sakila.actor where first_name = "Scarlett";

-- 7. Select all the actors with the last name ‘Johansson’.
select first_name, last_name from sakila.actor where last_name = "Johansson";
select count(last_name) from sakila.actor where last_name = "Johansson";

-- 8. How many films (movies) are available for rent?
select * from sakila.inventory;
select count(inventory_id) as movies_avaible from sakila.rental where return_date is null;

-- 9. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration, min(length) as min_duration from sakila.film;

-- 10. What's the average movie duration?
select avg(length) as average_movie_duration from sakila.film;

-- 11. How many movies are longer than 3 hours?
select count(length) from sakila.film where length > 180; 

-- 12. What's the length of the longest film title?
select max(length(title)) as length_title from sakila.film;
select title, length(title) as length_title from sakila.film order by length_title desc limit 1;