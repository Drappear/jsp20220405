USE mydb3;
-- 1 대 1 관계

CREATE TABLE Employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255),
    salary INT
);

-- -- -- -- -- 

CREATE TABLE Employees_pay(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    salary INT
);

CREATE TABLE Employees_mng(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255)
);