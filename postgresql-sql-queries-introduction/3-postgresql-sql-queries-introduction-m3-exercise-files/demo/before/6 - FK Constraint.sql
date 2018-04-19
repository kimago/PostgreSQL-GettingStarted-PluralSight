-- Clean up 
DROP TABLE "AlmondInc"."EmployeeEquipment";
DROP TABLE "AlmondInc"."Employee";

-- Demo Starts
CREATE TABLE "AlmondInc"."Employee"
(
  "ID" integer,
  "EmployeeName" character varying(256),
  "Age" integer
);

INSERT INTO "AlmondInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (1, 'Spencer Brown', 25);

INSERT INTO "AlmondInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (2, 'Steve Smith', 19);

INSERT INTO "AlmondInc"."Employee"(
             "ID", "EmployeeName", "Age")
    VALUES (3, 'Mark Roy', 30);

CREATE TABLE "AlmondInc"."EmployeeEquipment"
(
  "ID" integer,
  "EmployeeID" integer,
  "Equipment" character varying(256)
);

INSERT INTO "AlmondInc"."EmployeeEquipment"(
            "ID", "EmployeeID", "Equipment")
    VALUES (1, 1, 'Desk Computer');

INSERT INTO "AlmondInc"."EmployeeEquipment"(
            "ID", "EmployeeID", "Equipment")
    VALUES (2, 2, 'Laptop');

INSERT INTO "AlmondInc"."EmployeeEquipment"(
            "ID", "EmployeeID", "Equipment")
    VALUES (3, 1, 'Laptop');

INSERT INTO "AlmondInc"."EmployeeEquipment"(
            "ID", "EmployeeID", "Equipment")
    VALUES (4, 3, 'Mobile');

SELECT *
FROM "AlmondInc"."Employee";
SELECT *
FROM "AlmondInc"."EmployeeEquipment";


-- Create Primary Key Constraint 
ALTER TABLE "AlmondInc"."Employee"
	ADD PRIMARY KEY ("ID");

-- Create Foreign Key Constraint 
ALTER TABLE "AlmondInc"."EmployeeEquipment" 
	ADD CONSTRAINT "FKCont" 
	FOREIGN KEY ("EmployeeID") 
	REFERENCES "AlmondInc"."Employee" ("ID") MATCH FULL;


SELECT e."EmployeeName", eq."Equipment"
FROM "AlmondInc"."Employee" AS e
INNER JOIN "AlmondInc"."EmployeeEquipment" AS eq
	ON e."ID" = eq."EmployeeID";

DELETE
FROM "AlmondInc"."Employee"
WHERE "ID" = 1;

DElETE 
FROM "AlmondInc"."EmployeeEquipment";
DElETE 
FROM "AlmondInc"."Employee";
