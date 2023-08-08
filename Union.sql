create table WereHouseEmployeeDemo(
EmployeeID int,
FirstName varchar (25),
LastName varchar (25),
Age int,
Gender varchar (25),
)

Insert into WereHouseEmployeeDemo VALUES
(1050,'Robi','Santana',38,'Male'),
(1051,'Nelson','Angulo',28,'Male'),
(1056,'Juan','Castro',32,'Male'),
(1052,'Gipsy','Alcantara',29,'Female'),
(1053,'Lina','Rudecindo',30,'Female'),
(1054,'Beba','Contreras',33,'Female'),
(1055,'Andy','Andy P',35,'Male')


Select *
from SQLAnalyst.dbo.WereHouseEmployeeDemo
UNION
select *
from SQLAnalyst.dbo.EmployeeDemographics
order by EmployeeID

--make sure when you selecting data and using union, make sure the tables and the data are the same.