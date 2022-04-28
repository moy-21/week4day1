-- QUESTION 1 
-- 2 ACTORS WITH THE LAST NAME WAHLBERG

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg'

-- QUESTION 2
-- 5602 PAYMENTS BETWEEN 3.99 AND 5.99
SELECT COUNT(amount )
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99

-- QUESTION 3
-- Store has the most of 1000 movie
SELECT MAX(film_id)
FROM inventory
GROUP BY film_id
ORDER BY SUM(film_id) DESC;

--QUESTION 4
-- NO CUSTOMERS HAVE THE LAST NAME WILLIAM
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William'

--QUESTION 5
-- EMPLOYEE 2 JON GOT THE MOST SALES 
SELECT SUM(staff_id)
FROM payment
GROUP BY staff_id
ORDER BY MAX(staff_id)

SELECT *
FROM staff

-- QUESTION 6
-- THERES 603 DIFFERENT DISTRICT NAMES
SELECT DISTINCT COUNT(district)
FROM address

-- QUESTION 7
-- 
SELECT actor_id, film_id
FROM film_actor
GROUP BY actor_id, film_id


-- QUESTION 8
-- 0 customers
SELECT store_id, last_name
FROM customer
WHERE store_id = 1 AND last_name ='?es'
GROUP BY store_id, last_name

--QUESTION 9

SELECT DISTINCT COUNT(amount), customer_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id
HAVING COUNT(amount) > 250

-- QUESTION 10
-- 4 TOTAL RATINGS AND 
SELECT DISTINCT rating
FROM film
GROUP BY rating













































SELECT *
FROM actor
LIMIT 10 OFFSET 5;

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT last_name, actor_id
FROM actor
WHERE last_name = 'Wahlberg'

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J__';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE '%y%';

SELECT first_name, last_name
FROM actor
WHERE first_name NOT LIKE 'K';

SELECT customer_id, amount
FROM payment
WHERE amount > 2.00

SELECT customer_id, amount
FROM payment
WHERE amount <> 0.99

SELECT customer_id, amount
FROM payment
WHERE amount > 2.00
ORDER BY amount DESC;

SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99

SELECT SUM(amount)
FROM payment
WHERE amount > 5.99

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99

SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99

SELECT MAX(amount) AS max_num_payments
FROM payment
WHERE amount > 5.99

SELECT customer_id, MIN(amount)
FROM payment
GROUP BY customer_id

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT COUNT(customer_id), email
FROM customer
GROUP BY email
HAVING COUNT(customer_id) >= 1
ORDER BY email
LIMIT 10 OFFSET 2;

