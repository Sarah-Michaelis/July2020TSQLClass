-- Lab 1
SELECT  DepartmentID,
        Name,
        GroupName
        -- ModifiedDate
FROM  HumanResources.Department;

PRINT 'T-SQL is fun!'

SELECT 'T-SQL is fun!' AS MESSAGE;


-- Lab 2.1
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

-- Lab 2.2
SELECT Distinct [BusinessEntityID],
        [LastName],
        [FirstName],
        [MiddleName]
FROM [Person].[Person]
ORDER BY [LastName] DESC, FirstName DESC, MiddleName DESC;