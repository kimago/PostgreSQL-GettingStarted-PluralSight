
INSERT INTO "OrangeInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (1, 'Spencer Brown', 25);

INSERT INTO "OrangeInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (2, 'Steve Smith', 19);

SELECT *
FROM "OrangeInc"."Employee";

DElETE 
FROM "OrangeInc"."Employee";

ALTER TABLE "OrangeInc"."Employee"
  ADD CONSTRAINT "UniqueID" UNIQUE ("ID");