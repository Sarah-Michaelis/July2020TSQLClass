-- Lab 7.1
SELECT  Name,
        ProductID
  FROM  Production.Product
WHERE   ProductID IN
    (SELECT ProductID
      FROM  Sales.SalesOrderDetail
    WHERE   ProductID IS NOT NULL)

SELECT  Name,
        ProductID
  FROM  Production.Product
WHERE   ProductID NOT IN
    (SELECT ProductID
      FROM  Sales.SalesOrderDetail
    WHERE   ProductID IS NOT NULL);

-- Lab 7.2
SELECT  ProductID,
        Name,
        Color,
        (SELECT SUM(OrderQTY)
        FROM Sales.SalesOrderDetail AS sod
        WHERE sod.ProductID = prod.ProductID) AS 'Total Quantity'
  FROM  Production.Product AS prod 
  WHERE FinishedGoodsFlag = 1;

SELECT  ProductID,
        Name,
        Color,
        (SELECT SUM(OrderQTY)
        FROM Sales.SalesOrderDetail AS sod
        WHERE sod.ProductID = prod.ProductID) AS 'Total Quantity',
        (SELECT AVG(OrderQTY)
        FROM Sales.SalesOrderDetail AS sod
        WHERE sod.ProductID = prod.ProductID) AS 'Average Quantity'
  FROM  Production.Product AS prod 
  WHERE FinishedGoodsFlag = 1;

-- Lab 7.3
WITH totals AS
  (SELECT SUM(OrderQTY) AS SumQty,
          AVG(OrderQty) AS AvgQty, 
          ProductID
        FROM Sales.SalesOrderDetail
        GROUP BY ProductID)
SELECT  prod.ProductID,
        prod.Name,
        prod.Color,
        t.SumQty,
        t.AvgQty
  FROM  Production.Product AS prod 
  INNER JOIN totals AS t
    ON prod.ProductID = t.ProductID
WHERE FinishedGoodsFlag = 1

SELECT  prod.ProductID,
        prod.Name,
        prod.Color,
        t.SumQty,
        t.AvgQty
  FROM  Production.Product AS prod 
  INNER JOIN (
    SELECT SUM(OrderQTY) AS SumQty,
          AVG(OrderQty) AS AvgQty, 
          ProductID
        FROM Sales.SalesOrderDetail
        GROUP BY ProductID
        ) AS t
    ON prod.ProductID = t.ProductID
WHERE FinishedGoodsFlag = 1