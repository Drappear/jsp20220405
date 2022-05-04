USE mydb3;
DESC w3schools.Products;

CREATE TABLE Products(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE Categories(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
    description VARCHAR(255)
);

COMMIT;