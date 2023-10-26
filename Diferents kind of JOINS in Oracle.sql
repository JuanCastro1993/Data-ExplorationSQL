


--Realizando Joins.
select region_name, city
from   regions r
join countries c on (r.region_id = c.region_id)
join locations l on (c.country_id = l.country_id);

--
Select first_name,last_name,salary,department_name,city
from employees e
join departments d on (e.department_id = d.department_id)
join locations l on (d.location_id = l.location_id)
ORDER BY first_name;

--Complex Joing to get some more data.

select first_name, last_name, hire_date, salary,department_name,state_province,
country_name, region_name
from employees e
JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON (d.location_id = l.location_id)
JOIN countries c ON (l.country_id = c.country_id)
JOIN regions r ON (c.region_id = r.region_id)
WHERE HIRE_DATE > '10-APR-05' 
ORDER BY FIRST_NAME;


select last_name, salary, city
from employees e
JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON (d.location_id = l.location_id)
ORDER BY last_name;

--Diga de que pais son los empleados que ganan mas 15K Dolares

select last_name, salary, country_name
from employees e
JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON (d.location_id = l.location_id)
JOIN countries c ON (l.country_id = c.country_id)
WHERE salary >15000;

---Sumatoria de salario por ciudad.

select SUM(salary) sumatoria ,city
from employees e
JOIN departments d ON (e.department_id = d.department_id)
JOIN locations l ON (d.location_id = l.location_id)
group BY city
Order by 1 asc; 

-- De que region son los empleados que su salario es menor a 3000

select region_name,last_name,hire_date, salary
from regions r
JOIN countries c ON (r.region_id = c.region_id)
JOIN locations l ON (c.country_id = l.country_id)
JOIN departments d ON (l.location_id = d.location_id)
JOIN employees e ON (d.department_id = e.department_id)
WHERE salary <3000;

--AVG Salario por Pais
select AVG(salary) AvgSALARIO,country_name
from countries c
JOIN locations l ON (c.country_id = l.country_id)
JOIN departments d ON (l.location_id = d.location_id)
JOIN employees e ON (d.department_id = e.department_id)
group by country_name
Order by 1 asc;

---CANTIDAD DE EMPLEADOS POR JOB_TITTLE, PERO SOLO LOS QUE TENGAN MAS DE 4 EMPLEADOS.

--JOIN
--HAVING
--ORDER BY

select COUNT (EMPLOYEE_ID) CONTAR, JOB_TITLE
from employees e
Join jobs j ON (e.job_id = j.job_id)
HAVING COUNT (EMPLOYEE_ID) >4
GROUP BY job_title
ORDER BY 1 asc;

---







