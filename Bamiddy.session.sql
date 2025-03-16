-- SELECT * FROM film_category;

-- SELECT * FROM "film_actor"
-- LIMIT 10;

/* I Want to update the actor_id of the film_actor
 table to 2 where the film_id is 277 */
UPDATE film_actor
SET actor_id = (
    SELECT actor_id FROM actor 
    WHERE first_name = 'NICK' AND last_name = 'WAHLBERG'
    LIMIT 1
)
WHERE film_id = (
    SELECT film_id FROM film 
    WHERE title = 'ELEPHANT TROJAN'
    LIMIT 1
);



-- SELECT * FROM film_actor
-- WHERE film_id = 277;


