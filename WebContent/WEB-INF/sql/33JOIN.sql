USE mydb2;

SELECT * FROM Board;
SELECT * FROM Reply;

SELECT * FROM Reply, Board;

SELECT * FROM Board, Reply; -- 결합(Cartesian Product)
SELECT * FROM Board JOIN Reply; -- 위와 같은 결과(Cartesian Product)

SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- 위와 같은 결과(INNER JOIN)
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- 위와 같은 결과(INNER JOIN)
