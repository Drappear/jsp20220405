USE mydb2;

-- 게시물 별 댓글 수
SELECT b.id, COUNT(r.id) 
FROM Board b JOIN Reply r 
ON b.id = r.board_id 
GROUP BY b.id;

SELECT b.*, COUNT(r.id) 
FROM Board b JOIN Reply r 
ON b.id = r.board_id 
GROUP BY b.id;

-- INNER JOIN
SELECT * FROM Board b INNER JOIN Reply r ON b.id = r.board_id;

-- LEFT OUTER JOIN
SELECT * FROM Board b LEFT OUTER JOIN Reply r ON b.id = r.board_id;
SELECT * FROM Board b LEFT JOIN Reply r ON b.id = r.board_id;

-- RIGHT OUTER JOIN
SELECT * FROM Board b RIGHT OUTER JOIN Reply r ON b.id = r.board_id;
SELECT * FROM Reply r RIGHT OUTER JOIN Board b ON b.id = r.board_id;
SELECT * FROM Reply r RIGHT JOIN Board b ON b.id = r.board_id;

-- 댓글이 없는 게시물 조회
SELECT * 
FROM Board b LEFT JOIN Reply r 
ON b.id = r.board_id
WHERE r.id IS NULL;

-- 전체 게시물 조회 with 댓글 수
SELECT b.*, COUNT(r.id) NumOfReply 
FROM Board b LEFT JOIN Reply r 
ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;
