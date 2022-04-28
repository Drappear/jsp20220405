USE mydb1;

CREATE TABLE MyTable8 (
	col1 DATE,
    col2 DATETIME
);

SELECT * FROM MyTable8;

INSERT INTO MyTable8 (col1) VALUES ('2022-04-28');
INSERT INTO MyTable8 (col2) VALUES ('2022-04-28 11:12:13');

-- 현재시간 NOW();
SELECT NOW();

INSERT INTO MyTable8 (col1, col2) VALUES (NOW(), NOW());