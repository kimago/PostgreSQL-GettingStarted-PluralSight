CREATE TABLE fruitbowl (fruit VARCHAR(20), color VARCHAR(20));

CREATE TABLE icecreams (flavor VARCHAR(20), color VARCHAR(20));

-- Populate fruit
INSERT INTO fruitbowl (fruit, color) VALUES ('Kiwi', 'green');
INSERT INTO fruitbowl (fruit, color) VALUES ('Banana', 'yellow');

-- Populate icecreams

INSERT INTO icecreams (flavor, color)
	SELECT 'Mint Chip', 'green'
	UNION ALL
	SELECT 'Chocolate', 'brown';
	
SELECT * FROM fruitbowl;

SELECT * FROM icecreams;

DELETE FROM fruitbowl WHERE color = 'green';

-- #1/4: Inner join, retrieves only the INTER(INNER)SECTION
SELECT * FROM fruitbowl f INNER JOIN icecreams ic ON f.color = ic.color;

-- #2/4: LEFT (OUTER) join, retrieves ALL on left of JOIN statement (= fruitbowl)
SELECT * FROM fruitbowl f LEFT JOIN icecreams ic ON f.color = ic.color;
SELECT f.fruit, ic.flavor FROM fruitbowl f LEFT JOIN icecreams ic ON f.color = ic.color;

-- #3/4: RIGHT (OUTER) join, retrieves ALL on right of JOIN statement (= icecream)
SELECT * FROM fruitbowl f RIGHT JOIN icecreams ic ON f.color = ic.color;

-- #3.2 (beautification)
SELECT f.fruit, ic.flavor FROM fruitbowl f RIGHT JOIN icecreams ic ON f.color = ic.color;


-- $#4/4: Full Outer join, retrieves Everything.
SELECT * FROM fruitbowl f FULL JOIN icecreams ic ON f.color = ic.color;
SELECT f.fruit, ic.flavor  FROM fruitbowl f FULL JOIN icecreams ic ON f.color = ic.color;

-- #5/4 CROSS JOIN
SELECT  f.fruit, ic.flavor
 FROM fruitbowl f CROSS JOIN icecreams ic;

	