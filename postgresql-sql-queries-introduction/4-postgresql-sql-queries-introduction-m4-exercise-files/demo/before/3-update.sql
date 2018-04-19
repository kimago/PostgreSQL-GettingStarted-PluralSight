ALTER TABLE actornew
   ADD COLUMN "FilmCount" integer;

SELECT *
FROM actornew;

SELECT *
FROM film;

SELECT a.actor_id,first_name, last_name, title
FROM Actor a
INNER JOIN Film_Actor fa ON a.actor_id = fa.actor_id
INNER JOIN Film f ON fa.film_id = f.film_id;

SELECT a.actor_id, count(title) FilmCount
FROM Actor a
INNER JOIN Film_Actor fa ON a.actor_id = fa.actor_id
INNER JOIN Film f ON fa.film_id = f.film_id
GROUP BY a.actor_id
ORDER BY a.actor_id;

UPDATE actornew
SET "FilmCount" = 19
WHERE "actor_id" = 1;

SELECT *
FROM actornew
ORDER BY actor_id;

UPDATE actornew
SET "FilmCount" = 
(SELECT count(title) FilmCount
FROM Actor a
INNER JOIN Film_Actor fa ON a.actor_id = fa.actor_id
INNER JOIN Film f ON fa.film_id = f.film_id
WHERE a.actor_id = actornew.actor_id
GROUP BY a.actor_id);

UPDATE actornew
SET "FilmCount" = 
(SELECT count(title) FilmCount
FROM Actor a
INNER JOIN Film_Actor fa ON a.actor_id = fa.actor_id
INNER JOIN Film f ON fa.film_id = f.film_id
WHERE a.actor_id = actornew.actor_id
GROUP BY a.actor_id),
last_update = now();

SELECT *
FROM actornew
ORDER BY actor_id;