SELECT  BusinessEntityID,
        LoginID,
        JobTitle
FROM HumanResources.Employee 
WHERE JobTitle = 'Research and Development Engineer';

SELECT *
FROM Production.ProductCostHistory
WHERE StandardCost BETWEEN 10.00 AND 13.00;

SELECT  BusinessEntityID,
        FirstName,
        LastName
FROM Person.Person
WHERE FirstName = 'Mary' AND LastName = 'Gibson';