SELECT CONCAT(a.act_fname, ' ', a.act_lname) as Name, c.role as Role, m.mov_title as Movie
FROM movie_cast c
JOIN movie_list m
	ON c.mov_id = m.mov_id
JOIN movie_actors a
	ON a.act_id = c.act_id
WHERE a.act_id IN 
	(SELECT act_id 
    FROM movie_cast 
	GROUP BY act_id
    HAVING COUNT(*)>1);