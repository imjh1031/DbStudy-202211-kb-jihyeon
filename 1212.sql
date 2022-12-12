SELECT
	course_id,
	sum(score) AS `총합`,
	AVG(score) AS `평균`
FROM
	score_mst
GROUP BY
	course_id
HAVING
	`총합` > 100;