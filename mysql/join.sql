-- has many relationship, find count of children table, with respect to rows of parent table.
select na.id, na.permalink, c.narrative_id, count(c.id) as comments_count from narratives as na left join comments as c on c.narrative_id = na.id group by c.narrative_id limit 10;
-- better query
select na.id, na.permalink, c.narrative_id, count(c.id) as comments_count from narratives as na left join comments as c on c.narrative_id = na.id where na.id = 59 group by c.narrative_id;
-- https://www.dropbox.com/s/ok52ayggmjtj1xz/Screenshot%202014-02-08%2011.51.31.png
-- http://stackoverflow.com/questions/16163956/mysql-left-join-with-group-by
