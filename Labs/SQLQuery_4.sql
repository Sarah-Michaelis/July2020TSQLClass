-- Lab 4.1
SELECT  ProductID,
        COALESCE(Color, 'N/A') AS Color,
        Name,
        Name + ': ' + COALESCE(Color, 'N/A') AS Description
FROM  Production.Product;

SELECT  MinQty,
        MaxQty,
        MaxQty - MinQty AS Difference,
        SpecialOfferID,
        Description
FROM  Sales.SpecialOffer


-- Lab 4.2
SELECT  BusinessEntityID,
        UPPER(FirstName),
        UPPER(LastName)
  FROM  Person.Person;

SELECT  BusinessEntityID,
        LEFT(FirstName,1),
        LastName
  FROM  Person.Person;

SELECT  LastName, 
        REVERSE(LastName)
  FROM  Person.Person

-- Lab 4.3

SELECT  SalesOrderID,
        OrderDate,
        ShipDate,
        DATEDIFF(d, OrderDate, ShipDate) AS 'Different Date'
FROM  Sales.SalesOrderHeader

SELECT TOP(5)  CAST(OrderDate as date) AS OrderDate,
        FORMAT(DueDate, 'MM/dd/yyyy') AS DueDate,
        CONVERT(VARCHAR(10), ShipDate, 1) AS ShipDate
FROM  Sales.SalesOrderHeader