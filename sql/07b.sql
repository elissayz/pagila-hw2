/*
 * This problem is the same as 07.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

SELECT title
FROM film
LEFT JOIN inventory USING (film_id)
LEFT JOIN rental USING (inventory_id)
LEFT JOIN customer USING (customer_id)
LEFT JOIN address USING (address_id)
LEFT JOIN city USING (city_id)
LEFT JOIN country USING (country_id)
WHERE country_id = 103 AND film_id IN inventory.film_id
GROUP BY film.title
ORDER BY title;

