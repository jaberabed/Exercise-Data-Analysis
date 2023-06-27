SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update
	FROM rental;

SELECT rental_id,rental_date,customer_id
FROM rental
WHERE customer_id = 1;

SELECT rental_id,rental_date,customer_id
FROM rental
WHERE customer_id in (1,3,4);

SELECT COUNT(DISTINCT rental_id) FROM rental;

SELECT *
FROM rental
WHERE rental_date = '2005-05-24' OR inventory_id = '2452';

SELECT *
FROM rental
WHERE  rental_date = '2005-05-24' OR inventory_id = '2452';

SELECT *
FROM rental
WHERE NOT rental_date = '2005-05-24';

SELECT * FROM rental
ORDER BY customer_id ASC, rental_date DESC;

SELECT MIN(amount) AS SmallestPrice
FROM payment;

SELECT MAX(amount) AS LargestPrice
FROM payment;


SELECT COUNT(payment_id)
FROM payment;

SELECT AVG(amount)
FROM payment;


SELECT SUM(amount)
FROM payment;

SELECT * FROM film
WHERE title LIKE '_r%';

SELECT * FROM film
WHERE title LIKE 'a__%';

---Using the [charlist] Wildcard

SELECT * FROM film
WHERE title LIKE '[a-c]%';

SELECT * FROM film
WHERE title IN ('Chamber Italian', 'Academy Dinosaur', 'Adaptation Holes');

SELECT * FROM film
WHERE title NOT IN ('Chamber Italian', 'Academy Dinosaur', 'Adaptation Holes');

SELECT * FROM payment
WHERE amount BETWEEN 10 AND 20;

SELECT city, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM public.city;

SELECT * 
FROM inventory I
INNER JOIN rental R ON I.inventory_id = R.inventory_id;


SELECT * 
FROM inventory I
Right  JOIN rental R ON I.inventory_id = R.inventory_id;

SELECT * 
FROM inventory I
Left JOIN rental R ON I.inventory_id = R.inventory_id;

SELECT * 
FROM inventory I
Full JOIN rental R ON I.inventory_id = R.inventory_id;




