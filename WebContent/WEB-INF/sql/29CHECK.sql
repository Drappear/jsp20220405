USE mydb1;

-- CHECK : 입력되는 값을 검사
CREATE TABLE MyTable14 (
	col1 INT,
    col2 INT CHECK (col2 > 0)
);

DESC MyTable14;

SELECT * FROM MyTable14;

INSERT INTO MyTable14 (col1, col2) VALUES (3, 3);
INSERT INTO MyTable14 (col1, col2) VALUES (-3, 3);
INSERT INTO MyTable14 (col1, col2) VALUES (3, -3); -- 입력 불가

-- 테이블 만들때 사용한 명령어 확인
SHOW CREATE TABLE MyTable14;

-- backtick
CREATE TABLE MyTable (
	'unique' VARCHAR(10)
);