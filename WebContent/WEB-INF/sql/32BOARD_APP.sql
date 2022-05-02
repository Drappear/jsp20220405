CREATE DATABASE mydb2;
USE mydb2;

CREATE TABLE Board (
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL DEFAULT '제목 없음',
	body VARCHAR(5000) NOT NULL DEFAULT '내용 없음',
    inserted DATETIME NOT NULL DEFAULT NOW()
);

CREATE TABLE Reply (
	id INT PRIMARY KEY AUTO_INCREMENT,
	board_id INT,  -- foreign key (참조,외래 키)
	content VARCHAR(255) NOT NULL,
    inserted DATETIME DEFAULT NOW() NOT NULL,
    FOREIGN KEY (board_id) REFERENCES Board(id) -- foreign key 제약사항 추가
);

-- 테이블 관계 
-- 1 대 1
-- ex) 학생(이름, 생년월일...), 학력(출신학교, 졸업년도)

-- 1 대 N (1 대 다)
-- ex) 게시물(게시물 번호, 내용...), 댓글(댓글 내용)

-- N 대 N (다 대 다)
-- ex) 학생(이름, 생년월일...), 회사(회사명, ...)

DESC Board;
DESC Reply;

SELECT * FROM Board;
SELECT * FROM Reply;

SET SQL_SAFE_UPDATES = 1;
UPDATE Board 
SET inserted = DATE_SUB(inserted, INTERVAL 1 DAY);

