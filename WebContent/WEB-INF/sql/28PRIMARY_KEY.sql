USE mydb1;

CREATE TABLE MyTable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);

DESC MyTable12;

-- PRIMARY KEY : NOT NULL, UNIQUE 조합
CREATE TABLE MyTable13 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);

DESC MyTable13;

INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable13 (col1, col2) VALUES ('a', NULL);

SELECT * FROM MyTable13;


-- auto increment : 자동 값 증가
CREATE TABLE MyTable16 (
	col1 INT PRIMARY KEY AUTO_INCREMENT,
    col2 VARCHAR(10)
);

SELECT * FROM MyTable16;

INSERT INTO MyTable16 (col2) VALUES ('abc');

DELETE FROM MyTable16 WHERE col1 = 3;