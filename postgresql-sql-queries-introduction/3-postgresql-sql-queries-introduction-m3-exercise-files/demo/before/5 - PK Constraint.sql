
INSERT INTO "AlmondInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (1, 'Spencer Brown', 25);

INSERT INTO "AlmondInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (1, 'Steve Smith', 19);

INSERT INTO "AlmondInc"."Employee"(
             "EmployeeName", "Age")
    VALUES ('Steve Smith', 19);

INSERT INTO "AlmondInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (2, 'Steve Smith', 19);


SELECT *
FROM "AlmondInc"."Employee";

DElETE 
FROM "AlmondInc"."Employee";

ALTER TABLE "AlmondInc"."Employee"
	ADD PRIMARY KEY ("ID");