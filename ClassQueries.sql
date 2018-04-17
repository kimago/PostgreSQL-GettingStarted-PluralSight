-- Retrieve all the actors with actor_id less than 11

SELECT *
	FROM ACTOR
	WHERE actor_id < 11
	ORDER BY first_name;
	
-- Order descending by lastname
SELECT *
	FROM ACTOR
	WHERE actor_id < 11
	ORDER BY last_name DESC;
	
-- Unique firstnames and their counts

SELECT  first_name, COUNT(first_name)
	FROM actor
	WHERE actor_id BETWEEN 100 AND 200
	GROUP BY first_name;

-- Count actors between 100 and 200


SELECT first_name, COUNT(first_name)
	FROM actor
	WHERE actor_id BETWEEN 100 AND 200
	GROUP BY first_name;
	
-- list firstnames that show up >1.

SELECT first_name, COUNT(first_name) as namecount
	FROM actor
	WHERE actor_id BETWEEN 100 AND 200
	GROUP BY first_name
	HAVING COUNT(first_name) > 1;
	
	
-- Change actor's name from Cuba to Jacob

SELECT *
	FROM actor
	WHERE first_name = 'Cuba';
	
UPDATE actor
	SET first_name = 'Jacob'
	WHERE first_name = 'Cuba';


SELECT *
	FROM actor
	WHERE first_name = 'Jacob';
	
-- Insert new row for Robert Johnson

INSERT INTO actor
	(first_name, last_name) VALUES('Robert', 'Johnson');
	
SELECT * FROM actor WHERE first_name = 'Robert';

DELETE FROM actor WHERE actor_id > 202;

-- Delete rows where first_name = Robert.

SELECT * FROM actor WHERE first_name = 'Robert';
DELETE FROM actor WHERE first_name = 'Robert';
