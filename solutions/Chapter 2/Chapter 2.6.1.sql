-- SQLite
Select E.EmployeeKey as EmployeeKey,
E. FirstName as Employee_First_Name,
E.LastName as Employee_Last_Name,
M.FirstName as Manager_First_Name,
M.LastName as Manager_Last_Name
from DimEmployee E
join DimEmployee M
on E.ParentEmployeeKey = M.EmployeeKey;