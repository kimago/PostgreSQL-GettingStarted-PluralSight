CREATE TABLE "Customer"
(
  "Name" character varying(256),
  "Birthdate" date,
  "Zipcode" character varying(10)
)

INSERT INTO "Customer"(
            "Name", "Birthdate", "Zipcode")
    VALUES ('Mike', 'June 6, 1976', '01256');
INSERT INTO "Customer"(
            "Name", "Birthdate", "Zipcode")
    VALUES ('John', '06-Jan-1986', '00256');
INSERT INTO "Customer"(
            "Name", "Birthdate", "Zipcode")
    VALUES ('Duke', 'January 16, 1996', '12958');
INSERT INTO "Customer"(
            "Name", "Birthdate", "Zipcode")
    VALUES ('Vikky', '01/01/2001', '00001');

SELECT *
FROM "Customer";

SELECT *
FROM "Customer"
WHERE "Zipcode" LIKE '0%';

SELECT *
FROM "Customer"
WHERE EXTRACT(MONTH FROM "Birthdate") = 1;
