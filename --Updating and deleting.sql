-----Deleting and Updating Rows

Select * 
from SQLAnalyst.dbo.EmployeeDemographics

Insert into EmployeeDemographics VALUES
(1020,'Juancito','Perez',NULL,NULL)

--Updating
update SQLAnalyst.dbo.EmployeeDemographics
set Age = 18
where FirstName = 'Juancito' and LastName ='Perez'

--Updating
update SQLAnalyst.dbo.EmployeeDemographics
set Gender = 'Male'
where FirstName = 'Juancito' and LastName ='Perez'

--Deleting
DELETE FROM SQLAnalyst.dbo.EmployeeDemographics
where EmployeeID = 1020