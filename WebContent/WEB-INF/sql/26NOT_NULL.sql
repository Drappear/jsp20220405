USE mydb1;

-- NOT NULL : NULL을 허용하지 않음
CREATE TABLE MyTable9 (
	col1 VARCHAR(100),
    col2 VARCHAR(100) NOT NULL
);

DESC MyTable9;

SELECT * FROM MyTable9;

INSERT INTO MyTable9 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable9 (col1, col2) VALUES (NULL, 'b');
INSERT INTO MyTable9 (col1, col2) VALUES ('a', NULL); -- 입력 불가


