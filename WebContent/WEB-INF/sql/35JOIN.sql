USE w3schools;

-- Beverage 카테고리에 있는 상품들 조회
SELECT * FROM Products p JOIN Categories c 
ON p.CategoryID = c.CategoryID
WHERE c.CategoryID = 1;

-- Condiments 카테고리에 있는 상품들 조회
SELECT * FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Condiments';

SELECT c.CustomerName FROM Customers c JOIN Orders o 
ON c.CustomerID = o.CustomerID
WHERE OrderDate = '1996-07-04';