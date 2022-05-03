USE w3schools;

-- 주문한 적 없는 고객명 조회
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- 고객별 주문 건수 with 0건도 나와야함
SELECT c.CustomerName, COUNT(o.OrderID) NumOfOrder
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;
