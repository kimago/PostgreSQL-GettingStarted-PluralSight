CREATE TABLE actornew
(
  actor_id integer NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  last_update timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT actornew_pkey PRIMARY KEY (actor_id)
);

SELECT *
FROM actornew;

INSERT INTO actornew(
            actor_id, first_name, last_name, last_update)
    VALUES (2,'Nick','Wahlberg','2013-05-26 14:47:57.62'),
	   (3,'Ed','Chase','2013-05-26 14:47:57.62'),
           (4,'Jennifer','Davis','2013-05-26 14:47:57.62');

SELECT * 
FROM actornew;

INSERT INTO actornew(
            actor_id, first_name, last_name, last_update)
            SELECT actor_id, first_name, last_name, last_update
            FROM actor
            WHERE actor_id > 4;





