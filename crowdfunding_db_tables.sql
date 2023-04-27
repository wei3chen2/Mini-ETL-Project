-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YM9vlo


--To verify tables are created

SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';

--To verify each table has loaded data correctly after importing csv files
--SELECT TABLE "Campaign" 

SELECT * FROM public."Campaign"
LIMIT 100

--SELECT TABLE "Contacts" 

SELECT * FROM public."Contacts"
ORDER BY contact_id ASC 
LIMIT 100

--SELECT TABLE "Category" 

SELECT * FROM public."Category"
ORDER BY category_id ASC 

--SELECT TABLE "Subcategory" 
SELECT * FROM public."Subcategory"
ORDER BY subcategory_id ASC 

   