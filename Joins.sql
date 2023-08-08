--select *
--from SQLAnalyst.dbo.EmployeeDemographics
--inner Join SQLAnalyst.dbo.EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--select *
--from SQLAnalyst.dbo.EmployeeDemographics
--full outer Join SQLAnalyst.dbo.EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--select *
--from SQLAnalyst.dbo.EmployeeDemographics
--Left outer Join SQLAnalyst.dbo.EmployeeSalary
--On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

select *
from SQLAnalyst.dbo.EmployeeDemographics
Right outer Join SQLAnalyst.dbo.EmployeeSalary
On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID