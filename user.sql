INSERT INTO
	user_mst
	
VALUES
	(0, 'aaa', '1234', '김준일', 'bbb@gmail.com', NOW(), NOW()),
	(0, 'bbb', '1234', '김준일', 'bbb@gmail.com', NOW(), NOW()),
	(0, 'ccc', '1111', 'ㅇㅇㅇ', 'ddd@gmail.com', NOW(), NOW()),
	(0, 'ddd', '1111', 'ㅇㅇㅇ', 'ddd@gmail.com', NOW(), NOW());
	
DELETE
FROM
	user_mst
WHERE
	id = 4;
