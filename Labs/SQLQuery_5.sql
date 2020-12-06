-- Lab 5.1
SELECT  h.BusinessEntityID, 
        h.JobTitle,
        h.BirthDate,
        p.FirstName,
        p.LastName
  FROM  HumanResources.Employee AS h
INNER JOIN Person.Person AS p 
    ON  h.BusinessEntityID = p.BusinessEntityID;

SELECT  pro.ProductID,
        pro.Name AS 'Product Name',
        pro.ProductSubcategoryID,
        cat.ProductCategoryID,
        sub.Name AS 'Subcategory Name',
        cat.Name AS 'Category Name'
  FROM  Production.Product AS pro 
INNER JOIN Production.ProductSubcategory AS sub 
    ON  pro.ProductSubcategoryID = sub.ProductSubcategoryID
INNER JOIN Production.ProductCategory AS cat 
    ON  sub.ProductCategoryID = cat.ProductCategoryID;

-- Lab 5.2
SELECT  p.Name AS 'Product Name',
        s.SalesOrderDetailID,
        s.ProductID AS 'Sales Product ID',
        p.ProductID AS 'Production Product ID',
        s.OrderQty
  FROM  Production.Product as p 
LEFT OUTER JOIN Sales.SalesOrderDetail AS s
    ON  s.ProductID = p.ProductID;

SELECT  s.SalesOrderID,
        s.SalesPersonID,
        p.SalesYTD
  FROM  Sales.SalesOrderHeader AS s 
LEFT OUTER JOIN Sales.SalesPerson as p 
    ON  s.SalesPersonID = p.BusinessEntityID;

-- Lab 5.3
SELECT  p.Name AS 'Product Name',
        s.SalesOrderDetailID,
        s.ProductID AS 'Sales Product ID',
        p.ProductID AS 'Production Product ID',
        s.OrderQty
  FROM  Production.Product as p 
LEFT OUTER JOIN Sales.SalesOrderDetail AS s
    ON  s.ProductID = p.ProductID
 WHERE  s.SalesOrderID IS NULL;

SELECT  s.SalesOrderID,
        s.SalesPersonID,
        p.SalesYTD
  FROM  Sales.SalesOrderHeader AS s 
LEFT OUTER JOIN Sales.SalesPerson as p 
    ON  s.SalesPersonID = p.BusinessEntityID
 WHERE  p.BusinessEntityID IS NULL;