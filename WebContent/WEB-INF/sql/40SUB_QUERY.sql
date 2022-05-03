USE w3schools;

-- 주문한 적 없는 고객명 조회(JOIN, SUB QUERY)
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- 고객별 주문 수(JOIN, SUB QUERY)
SELECT c.CustomerName, COUNT(o.OrderID)
FROM Customers c LEFT JOIN Orders o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 2 DESC;

SELECT c.CustomerName, (SELECT COUNT(OrderID) FROM Orders o WHERE c.CustomerID = o.CustomerID) NumOfOrder
FROM Customers c
ORDER BY 2 DESC;


-- 상품명과 카테고리명 조회
-- JOIN
SELECT p.ProductName, c.CategoryName
FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
ORDER BY 1;

-- SUB QUERY
SELECT p.ProductName, (SELECT c.CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID) CategoryName
FROM Products p
ORDER BY 1;

-- Suppliers, Customers
-- 고객과 공급자가 모두 있는 나라 조회
SELECT DISTINCT c.Country
FROM Customers c JOIN Suppliers s
ON c.Country = s.Country
ORDER BY 1 DESC;

SELECT DISTINCT c.Country
FROM Customers c
WHERE c.Country IN (SELECT s.Country FROM Suppliers s)
ORDER BY 1 DESC;


-- leetcode 1587
-- sub query
SELECT (SELECT name FROM Users u WHERE t.account = u.account) name,
       SUM(t.amount) balance
FROM Transactions t
GROUP BY t.account
HAVING balance > 10000;

-- JOIN
SELECT u.name, SUM(t.amount) balance
FROM Users u JOIN Transactions t 
   ON u.account = t.account
GROUP BY u.account
HAVING balance > 10000;

-- ---------------------------

-- leetcode 1407
-- SUB QUERY
 SELECT name, 
       IFNULL((SELECT SUM(distance) 
               FROM Rides 
               WHERE user_id = Users.id
               GROUP BY user_id), 0) travelled_distance
 FROM Users
 ORDER BY 2 DESC, 1;

-- JOIN
SELECT u.name,
       SUM(IFNULL(r.distance, 0)) travelled_distance
FROM Users u LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY u.id
ORDER BY 2 DESC, 1;

-- ------------------------------

-- leetcode 1965
-- SUB QUERY
SELECT e.employee_id
FROM Employees e
WHERE e.employee_id NOT IN (SELECT s.employee_id FROM Salaries s)

UNION 

SELECT s.employee_id
FROM Salaries s
WHERE s.employee_id NOT IN (SELECT e.employee_ID FROM Employees e)

ORDER BY employee_id;

-- JOIN
SELECT e.employee_id
FROM Employees e LEFT JOIN Salaries s
  ON e.employee_id = s.employee_id
WHERE s.employee_id IS NULL

UNION

SELECT s.employee_id
FROM Employees e RIGHT JOIN Salaries s
  ON e.employee_id = s.employee_id
WHERE e.employee_id IS NULL

ORDER BY 1;
