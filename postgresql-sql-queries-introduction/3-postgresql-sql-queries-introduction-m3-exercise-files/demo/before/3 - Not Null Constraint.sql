INSERT INTO "OrangeInc"."Employee"(
            "ID", "EmployeeName" )
    VALUES (2, 'Steve Smith');

SELECT *
FROM "OrangeInc"."Employee";

DELETE
FROM "OrangeInc"."Employee";

ALTER TABLE "OrangeInc"."Employee" ALTER COLUMN "Age" SET NOT NULL;