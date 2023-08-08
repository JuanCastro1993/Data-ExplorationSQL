

CREATE TABLE #Temp_Employee(
JobTitle varchar (50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)
 
 insert into #Temp_Employee
 SELECT JobTitle, count(JobTitle),Avg(Age), AVG(salary)
 FROM SQLAnalyst..EmployeeDemographics emp
 join SQLAnalyst..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle 

select * from #Temp_Employee