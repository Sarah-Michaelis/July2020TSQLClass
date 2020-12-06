-- Lab 6.1
SELECT  COUNT(CustomerID) AS 'Number of Customers'
  FROM  Sales.Customer;

SELECT  SUM(OrderQty) AS 'Total Number of Products Ordered'
  FROM  Sales.SalesOrderDetail;

SELECT   ProductID,
         SUM(OrderQty) AS 'Total Order Qty by Product'
  FROM   Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID;

SELECT COUNT(LEFT(LastName, 1)) AS 'Total First Initial LN'
  FROM Person.Person;

SELECT   LEFT(LastName, 1) AS 'First Initial LN',
         COUNT(LEFT(LastName,1)) AS 'Total Amount per Initial'
  FROM   Person.Person
GROUP BY LEFT(LastName, 1)
ORDER BY LEFT(LastName, 1);

-- Lab 6.2
SELECT  COUNT(SalesOrderID)
  FROM  Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING  COUNT(SalesOrderID) > 3;

SELECT  SUM(LineTotal),
        SalesOrderID
  FROM  Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING  SUM(LineTotal) > 1000;

SELECT  ProductModelID,
        COUNT(*) AS Total
  FROM  Production.Product
GROUP BY ProductModelID
HAVING COUNT(ProductModelID) = 1;
