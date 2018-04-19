
ALTER TABLE "OrangeInc"."Employee"
  ADD CONSTRAINT "PositiveAge" CHECK ("Age" >= 0);

INSERT INTO "OrangeInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (1, 'Spencer Brown', 25);

INSERT INTO "OrangeInc"."Employee"(
            "ID", "EmployeeName", "Age")
    VALUES (2, 'Steve Smith', -9);

SELECT *
FROM "OrangeInc"."Employee";
