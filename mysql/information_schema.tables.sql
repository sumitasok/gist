-- Query to see how much data does each database in mysql takes.

SELECT table_schema "Data Base Name", sum( data_length + index_length ) / 1024 / 1024 "Data Base Size in MB"  FROM information_schema.TABLES GROUP BY table_schema;

-- To see the free space available in the database

SELECT table_schema "Data Base Name", 
sum( data_length + index_length ) / 1024 / 1024 "Data Base Size in MB", 
sum( data_free )/ 1024 / 1024 "Free Space in MB" 
FROM information_schema.TABLES 
GROUP BY table_schema ;


