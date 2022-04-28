USE mydb1;
-- UNIQUE : 해당 컬럼의 값이 중복되면 안됨

CREATE TABLE MyTable10 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE
);

DESC MyTable10;

SELECT * FROM MyTable10;

INSERT INTO MyTable10 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable10 (col1, col2) VALUES ('b', 'a');
INSERT INTO MyTable10 (col1, col2) VALUES ('c', 'd');
INSERT INTO MyTable10 (col1, col2) VALUES ('c', 'e');
INSERT INTO MyTable10 (col1, col2) VALUES ('c', 'e'); -- 안들어감
INSERT INTO MyTable10 (col1, col2) VALUES ('c', NULL);
INSERT INTO MyTable10 (col1, col2) VALUES ('d', NULL);

-- UNIQUE, NOT NULL 조합
CREATE TABLE MyTable11 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE NOT NULL
);

DESC MyTable11;