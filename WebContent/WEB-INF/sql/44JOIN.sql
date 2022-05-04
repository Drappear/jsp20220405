USE w3schools;

SELECT * FROM Orders;
-- 1996 07 04에 주문한 고객의 이름
SELECT o.OrderDate, c.CustomerName, o.EmployeeID 
FROM Orders o JOIN Customers c 
ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 고객의 이름과 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';
						
-- 1996-07-04에 주문처리한 직원명과 배송자명 조회
SELECT o.OrderDate, concat(e.FirstName, ' ', e.LastName) EmployeeName, s.ShipperName 
FROM Orders o JOIN Shippers s ON o.ShipperID = s.ShipperID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 고객과, 처리한 직원, 배송한 배송자 명
SELECT o.Orderdate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName, s.ShipperName 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			JOIN Employees e ON o.EmployeeID = e.EmployeeID
            JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 상품명(들)
SELECT o.OrderDate, p.ProductName, d.Quantity, p.Price, (d.Quantity * p.price) total
FROM OrderDetails d JOIN Orders o ON o.OrderID = d.OrderID
					JOIN Products p ON d.ProductID = p.ProductID 
WHERE o.OrderDate = '1996-07-04';
 
-- 1996-07-08에 각 고객의 주문 총액
SELECT o.OrderDate, c.CustomerName, SUM(d.Quantity * p.price) total
FROM Orders o JOIN OrderDetails d ON o.OrderID = d.OrderID
			JOIN Products p ON d.ProductID = p.ProductID
			JOIN Customers c ON o.CustomerID = c.CustomerID			            
WHERE o.OrderDate = '1996-07-08'
GROUP BY c.CustomerID;

-- 1996년 가장 많은 주문을 받은 직원
-- 1996년 직원별 처리한 주문 총 금액 조회(높은 순)
SELECT concat(e.FirstName, ' ', e.LastName) EmployeeName, SUM(d.Quantity * p.Price) total
FROM Orders o JOIN OrderDetails d ON o.OrderID = d.OrderID
				JOIN Employees e ON o.EmployeeID = e.EmployeeID
                JOIN Products p ON d.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY o.EmployeeID
ORDER BY total DESC;

-- 가장 많은 상품 수량이 팔린 카테고리
SELECT p.CategoryID, c.CategoryName, SUM(d.Quantity) total
FROM OrderDetails d JOIN Products p ON d.ProductID = p.ProductID
					JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY p.CategoryID
ORDER BY total DESC;              

-- 1996년 7월 동안 가장 많이 팔린 카테고리
SELECT c.CAtegoryID, c.CategoryName, SUM(IFNULL(d.Quantity, 0)) total
FROM OrderDetails d JOIN Orders o ON d.OrderID = o.OrderID
						 AND o.OrderDate BETWEEN '1996-08-01' AND '1996-08-07'
					JOIN Products p ON d.ProductID = p.ProductID					                    
			  RIGHT JOIN Categories c ON p.CategoryID = c.CategoryID                    
GROUP BY c.CategoryID
ORDER BY total DESC;
