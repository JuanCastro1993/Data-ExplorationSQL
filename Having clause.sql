select JobTitle, AVG(Salary)
from SQLAnalyst.dbo.EmployeeDemographics
join SQLAnalyst.dbo.EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING  AVG (Salary) > 45000
ORDER BY AVG(Salary)