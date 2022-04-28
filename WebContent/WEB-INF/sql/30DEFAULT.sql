USE mydb1;

-- DEFAULT : 값이 명시되지 않았을 때 기본값
CREATE TABLE MyTable15 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'hello'
);

DESC MyTable15;

INSERT INTO MyTable15 (col1, col2) VALUES ('abc', 'def');

SELECT * FROM MyTable15;

INSERT INTO MyTable15 (col1, col2) VALUES ('abc', NULL);
INSERT INTO MyTable15 (col1) VALUES ('hi');