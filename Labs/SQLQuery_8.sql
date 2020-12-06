-- Lab 8
SELECT  p.BusinessEntityID,
        p.FirstName,
        p.LastName,
        Role = 'Employee'
  FROM  Person.Person AS p 
INNER JOIN HumanResources.Employee AS emp
    ON p.BusinessEntityID = emp.BusinessEntityID
UNION ALL
SELECT  p.BusinessEntityID,
        p.FirstName,
        p.LastName,
        Role = 'Job Candidate'
  FROM  Person.Person AS p 
INNER JOIN HumanResources.JobCandidate AS jc
    ON p.BusinessEntityID = jc.BusinessEntityID
UNION ALL
SELECT  p.BusinessEntityID,
        p.FirstName,
        p.LastName,
        Role = 'Customer'
  FROM  Person.Person AS p    
INNER JOIN Sales.Customer as cus 
    ON p.BusinessEntityID = cus.PersonID
UNION ALL
SELECT  p.BusinessEntityID,
        p.FirstName,
        p.LastName,
        Role = 'Salesperson'
  FROM  Person.Person AS p 
INNER JOIN Sales.SalesPerson as per 
    ON p.BusinessEntityID = per.BusinessEntityID
ORDER BY BusinessEntityID