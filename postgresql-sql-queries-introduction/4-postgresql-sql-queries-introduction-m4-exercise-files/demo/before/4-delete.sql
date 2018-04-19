-- Remove rows with actor_id > 40
SELECT *
FROM actornew
WHERE "actor_id" > 40
ORDER BY actor_id;


-- Keep rows with filmcount > 30
-- Remove rows with filmcount <= 30
SELECT *
FROM actornew
WHERE "FilmCount" <= 30
ORDER BY actor_id;

SELECT *
FROM actornew
WHERE "actor_id" > 40 AND "FilmCount" <= 30
ORDER BY actor_id;

SELECT *
FROM actornew
WHERE "actor_id" = 50;

DELETE
FROM actornew
WHERE "actor_id" > 40 AND "FilmCount" <= 30;

SELECT *
FROM actornew
ORDER BY actor_id;

