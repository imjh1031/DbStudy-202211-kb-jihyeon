INSERT INTO
	board_mst
VALUES
	(0, '제목1', '게시글 내용1', 0, 1),
	(0, '제목2', '게시글 내용2', 0, 1),
	(0, '제목3', '게시글 내용3', 0, 1),
	(0, '제목1', '게시글 내용1', 0, 2), 
	(0, '제목2', '게시글 내용2', 0, 2),
	(0, '제목3', '게시글 내용3', 0, 2),
	(0, '제목4', '게시글 내용4', 0, 1),
	(0, '제목5', '게시글 내용5', 0, 1), 
	(0, '제목6', '게시글 내용6', 0, 1), 
	(0, '제목4', '게시글 내용4', 0, 2), 
	(0, '제목5', '게시글 내용5', 0, 2), 
	(0, '제목6', '게시글 내용6', 0, 2);
	
SELECT
	*,
	(SELECT COUNT(1) FROM  board_mst bm2 WHERE bm2.writer_id = bm.writer_id) AS writer_count
	
FROM
	board_mst bm;

SET PROFILES;	
SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count /* 서브쿼리는 괄호를 써야함. 하나만 쓸 수 있음 */
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT
		writer_id,
		COUNT(1) AS writer_count
	FROM
		board_mst
	GROUP BY
		writer_id) wc ON(wc.writer_id = bm.writer_id);
SHOW PROFILES;

SET profiling = 1;

