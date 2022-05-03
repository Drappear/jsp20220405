USE w3schools;

SELECT * FROM Products;

-- 각 카테고리별 상품 수
SELECT CategoryID, Count(ProductID) FROM Products GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, Count(ProductID) 
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID;

-- 고객별 주문 건수
SELECT c.CustomerID, c.CustomerName, Count(o.OrderID) 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID GROUP BY c.CustomerID ORDER BY 3 DESC;