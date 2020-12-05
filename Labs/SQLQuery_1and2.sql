SELECT TOP(5) [CustomerID],
        [StoreID],
        [AccountNumber]
FROM [Sales].[Customer]

SELECT Distinct [FirstName],
       [LastName]
FROM [Person].[Person]

SELECT TOP(50)PERCENT
    [SalesOrderID],
    [OrderDate]
FROM [Sales].[SalesOrderHeader]

SELECT Distinct [BusinessEntityID],
        [LastName],
        [FirstName],
        [MiddleName]
FROM [Person].[Person]
ORDER BY [LastName] DESC, FirstName DESC, MiddleName DESC;