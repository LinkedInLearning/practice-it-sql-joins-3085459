-- SQLite
SELECT E.EmployeeKey AS EmployeeKey,
E.FirstName AS Employee_First_Name,
E.LastName AS Employee_Last_Name,
M.FirstName AS Manager_First_Name,
M.LastName AS Manager_Last_Name
FROM DimEmployee E
JOIN DimEmployee M
ON E.ParentEmployeeKey = M.EmployeeKey;