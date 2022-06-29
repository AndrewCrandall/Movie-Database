use movies;

INSERT INTO movie_list(mov_id, mov_title, mov_year, mov_time, mov_lang,
						mov_dt_rel, mov_rel_country)
VALUES (140, 'Argo', 2012, 120, 'English',
		'2012-10-12','USA');
       
INSERT INTO movie_actors(act_id, act_fname, act_lname, act_gender)
	VALUES(31, 'Ben', 'Affleck', 'M');
    
INSERT INTO movie_cast(act_id, mov_id, role)
	VALUES(31, 140, 'Tony Mendez');
    
use movies;
SELECT
	mov_title as Movie,
	DAY(mov_dt_rel) AS Day,
    MONTH(mov_dt_rel) as Month,
    YEAR(mov_dt_rel) as Year
FROM movie_list
WHERE mov_title = 'Argo';
