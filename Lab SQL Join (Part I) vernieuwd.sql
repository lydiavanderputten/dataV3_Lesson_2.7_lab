USE Sakila;
-- How many films are there for each of the categories in the category table. Use appropriate join to write this query.
SELECT * FROM Sakila.film_category;
SELECT * FROM Sakila.film;

SELECT category_id, COUNT(film_id)
FROM Sakila.film_category fc
JOIN Sakila.film f
ON fc.film_id = f.film_id;


-- Display the total amount rung up by each staff member in August of 2005.Payment table. Amount
SELECT * FROM Sakila.payment;
SELECT * FROM Sakila.staff;

SELECT amount, COUNT(p.staff_id) as 'total amount of rung up'
FROM Sakila.payment p
Join Sakila.staff s
On bank.p.staff_id = s.staff_id;


-- Which actor has appeared in the most films? 
SELECT * FROM Sakila.actor_info;
SELECT * FROM Sakila.

SELECT a.first_name, a.last_name, COUNT(DISTINCT(fa.film_id))
FROM sakila.film_actor fa
JOIN sakila.actor a
ON fa.actor_id = a.actor_id
GROUP BY a.first_name, a.last_name
ORDER BY COUNT(fa.film_id) DESC;

-- Most active customer (the customer that has rented the most number of films)

SELECT c.first_name, c.last_name, COUNT(rental_id)
FROM sakila.rental r
JOIN sakila.customer c
ON r.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY COUNT(rental_id) DESC;

-- Display the first and last names, as well as the address, of each staff member.
SELECT * FROM Sakila.staff;
SELECT * FROM Sakila.staff_list;

SELECT first_name, last_name, address, COUNT(staff_id)
FROM Sakila.staff f
JOIN Sakila.staff_list sl USING (staff_id)
GROUP BY staff_id;


-- List each film and the number of actors who are listed for that film.
SELECT * FROM Sakila.film;
SELECT * FROM Sakila.fil_actor;

SELECT film_id, title, COUNT(actor_id)
FROM Sakila.film f
JOIN Sakila.film_actor USING (film_id)
GROUP BY film_id;

-- Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.
SELECT * FROM Sakila.payment;
SELECT * FROM Sakila.customer;

SELECT first_name, last_name, SUM(p.amount) as total_paid
FROM Sakila.payment p
JOIN Sakila.customer c USING (customer_id)
GROUP BY last_name
ORDER BY last_name asc;

-- List number of films per category (see question 1)




