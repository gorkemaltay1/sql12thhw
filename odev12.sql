SELECT COUNT(length) from film
WHERE length > (SELECT AVG(length) FROM film)

SELECT count(rental_rate) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film)

SELECT title FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)

SELECT COUNT(payment.customer_id),first_name,last_name FROM payment
INNER JOIN customer ON customer.customer_id=payment.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(payment.customer_id) DESC