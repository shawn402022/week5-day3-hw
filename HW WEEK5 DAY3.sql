-- LIST ALL CUSTOMERS WHO LIVE IN TEXAS use joins--
SELECT *
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE customer_id = 10;


--GET ALL PAYMENTS ABOVE 6.99 WITH THE CUSTOMERS FULL NAME--
SELECT *
FROM customer
JOIN payment
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99;


--SHOW ALL CUSTOMERS NAME SWHO HAVE MADE PAYMETNS OVER 175 use sub queries--
SELECT payment.customer_id, SUM(amount) AS total_amount_spent
FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY payment.customer_id
HAVING SUM(amount) > 175

--LSIT ALL CUSTOMERS THAT LIVE IN NEPAL use the city table --


SELECT *
FROM country
JOIN city
ON country.country_id = city.country_id
JOIN address
ON address.city_id = city.city_id
JOIN customer
ON customer.address_id = address.address_id
WHERE country = 'Nepal'



--WHICH STAF MEMBER HAD THE MOST TRANSACTI--
SELECT rental.staff_id, SUM(staff_id)
FROM rental 
GROUP BY staff_id

--HOW MANY MOVIES OF EACH RATING ARE THERE--
SELECT count(rating)
FROM film
GROUP BY  film.rating


--SHOW CUSTOMER WHO HAVE MADE A SINGLE PAYMENT ABOCE 6.99 use subqueries--
SELECT *
FROM customer
JOIN payment
ON payment.customer_id = customer.customer_id
HAVING SUM(amount) > 699
GROUP BY customer.customer_id;

--HOW MANY FREE RENTALS DID OUR STORES GIVE AWAY--

