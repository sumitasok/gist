qxt_dev=# select user_id from v2api_location where ST_DWithin(geom_point, ST_GeomFromText('POINT(1.0 2.0)', 4326), 1000);
 user_id 
---------
      10
(1 row)

qxt_dev=# select user_id from v2api_location where ST_DWithin(geom_point, ST_GeomFromText('POINT(1.0 2.0)', 4326),0);
 user_id 
---------
      10
(1 row)

qxt_dev=# select user_id from v2api_location where ST_DWithin(geom_point, ST_GeomFromText('POINT(2.0 2.0)', 4326),1);
 user_id 
---------
      10
(1 row)

qxt_dev=# select user_id from v2api_location where ST_DWithin(geom_point, ST_GeomFromText('POINT(2.0 3.0)', 4326),1);
 user_id 
---------
(0 rows)

qxt_dev=# select * from v2api_location;
 id | user_id | latitude | longitude |                     geom_point                     
----+---------+----------+-----------+----------------------------------------------------
  1 |      10 |        2 |         1 | 0101000020E6100000000000000000F03F0000000000000040
(1 row)


