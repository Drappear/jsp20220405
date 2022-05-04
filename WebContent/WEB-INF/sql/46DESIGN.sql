
-- 제 2 정규화(Second Normal Form, 2NF)
-- 규칙 1 : 제 1 정규형이어야 한다.
-- 규칙 2 : 부분적 함수 의존이 없다.
	-- 키가 아닌 열이 합성키의 일부에 종속되는 경우
    
-- 제 3 정규화(Third Normal Form, 3NF)
-- 규칙 1 : 제 2 정규형이어야 한다.
-- 규칙 2 : 이행적 종속이 없다.
	-- 키가 아닌 열이 키가 아닌 다른 열에 종속되는 경우가 없다.
    
USE mydb3;

CREATE TABLE courses(
	course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor VARCHAR(255),
    instructor_phone VARCHAR(255)
);

DROP TABLE courses;

CREATE TABLE courses(
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255),
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id)
);

CREATE TABLE instructor(
	instructor_id INT PRIMARY KEY AUTO_INCREMENT,
	instructor_name VARCHAR(255),
    instructor_phone VARCHAR(255)
);

COMMIT;