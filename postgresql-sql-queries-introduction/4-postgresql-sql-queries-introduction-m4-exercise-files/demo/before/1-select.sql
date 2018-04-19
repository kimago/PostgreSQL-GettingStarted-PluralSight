SELECT *
FROM Actor;

SELECT actor_id, first_name, last_name, last_update
FROM Actor;

SELECT actor_id, first_name, last_name, last_update
FROM Actor
WHERE actor_id > 5 and actor_id < 25;

SELECT actor_id, first_name, last_name, last_update
FROM Actor
WHERE actor_id > 5 and actor_id < 25
ORDER BY first_name;

SELECT first_name, count(*) countFirstName
FROM Actor
WHERE actor_id > 5 
GROUP BY first_name
ORDER BY first_name;

SELECT first_name, count(*) countFirstName
FROM Actor
WHERE actor_id > 5 
GROUP BY first_name
HAVING count(*) > 3
ORDER BY first_name;


SELECT first_name, last_name, title
FROM Actor a
INNER JOIN Film_Actor fa ON a.actor_id = fa.actor_id
INNER JOIN Film f ON fa.film_id = f.film_id;


