-- remove duplicate rows from a table
-- if you want to keep the row with the lowest id value
-- http://stackoverflow.com/questions/4685173/delete-all-duplicate-rows-except-for-one-in-mysql
DELETE n1 FROM names n1, names n2 WHERE n1.name = n2.name AND n1.id > n2.id
-- if you want to keep the row with the highest id value.
DELETE n1 FROM names n1, names n2 WHERE n1.name = n2.name AND n1.id < n2.id
