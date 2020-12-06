-- Lab 3.1
SELECT  BusinessEntityID,
        LoginID,
        JobTitle
FROM HumanResources.Employee 
WHERE JobTitle = 'Research and Development Engineer';

SELECT *
FROM Production.ProductCostHistory
WHERE StandardCost BETWEEN 10 AND 13;

SELECT  BusinessEntityID,
        FirstName,
        LastName
FROM Person.Person
WHERE FirstName = 'Mary' AND LastName = 'Gibson';

-- Lab 3.2
SELECT  SalesOrderID,
        OrderDate,
        CurrencyRateID
FROM  Sales.SalesOrderHeader
WHERE CurrencyRateID IS NULL;

SELECT  SalesOrderID,
        OrderDate,
        CurrencyRateID
FROM  Sales.SalesOrderHeader
WHERE CurrencyRateID IS NULL
        OR CurrencyRateID = 1536;

SELECT  BusinessEntityID,
        FirstName,
        MiddleName,
        LastName,
        (COALESCE(FirstName,'') + COALESCE(' ' + MiddleName,'') + ' ' + COALESCE(LastName, '')) AS FullName
FROM  Person.Person

SELECT  BusinessEntityID,
        FirstName,
        MiddleName,
        LastName,
        (FirstName + ISNULL(' ' + MiddleName,'') + ' ' + LastName) AS FullName
FROM  Person.Person