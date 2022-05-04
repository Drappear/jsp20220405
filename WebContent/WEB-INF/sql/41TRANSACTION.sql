USE mydb1;

-- TRANSACTION
-- 하나의 업무

-- ex) 은행의 송금
-- 1. A고객의 계좌에서 출금
-- 2. B고객의 계좌에 입금

-- COMMIT : DB에 반영
-- ROLLBACK : 이전으로 되돌림

SELECT * FROM Customers;

ALTER TABLE mydb1.Customers
MODIFY CustomerID INT PRIMARY KEY AUTO_INCREMENT;

UPDATE Customers 
SET CustomerName = 'Son'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

ROLLBACK;

-- disable auto commit
SET autocommit = 0;

UPDATE Customers 
SET CustomerName = 'Cha'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

ROLLBACK;

-- 
UPDATE Customers
SET CustomerName = 'Park'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

COMMIT;
ROLLBACK;