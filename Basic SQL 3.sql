use employee1;
select * from emp;

-- Write a query to display the Ename and Salary using alias name "Emp_Name", "Emp_Salary"

select Ename as "Emp_Name",
Salary as "Emp_Salary" from emp; 

-- Write a query to get unique Eid from emp table

select distinct Eid from emp;

-- Write a query to get all employee details from the emp table order by name, descending. 
select * from emp
order by EName desc;

-- Write a query to get the names , salary, PF of all the employees (PF is calculated as 15% of salary). ##
select EName, Salary , Salary * 0.15 % "PF"
from emp;
    
-- Write a query to get the employee ID, names , salary in ascending order of salary. 
select Eid,EName,Salary from emp
order by Salary;

-- Write a query to get the total salaries payable to employees. 
select sum(Salary) from emp;

-- Write a query to get the maximum and minimum salary from emp table.
select max(Salary) as "Max" ,
min(Salary) as "min"
from emp;

-- Write a query to get the average salary and number of employees in the emp table.
select avg(Salary) 'Average Salary',
count(Eid) as 'No of Emp'
from emp;

-- Write a query to get the number of employees working with the company.  
select count(*) 'no of employees' from emp;

-- Write a query to get the number of Manager ID in the employees table. 
select distinct(ManagerID) from emp;

-- Write a query get all  name from emp table in upper case. 
select upper(EName) from emp;

-- Write a query to get the first 3 characters of Designation from  table.
select substring(Designation,1,5) from emp;

-- Write a query to calculate 171*214+625
select 171*214+625 result;

-- Write a query to get the details of Team Lead  from  table.  
select * from emp 
where Designation = 'teamLead';

-- Write a query to get  name from emp table after removing white spaces from both side.
select trim(Ename) from emp;

-- Write a query to get the length of the employee names from table.
select length(Ename) from emp;

-- Write a query to check if the Ename fields of the emp table contains numbers.    
select * from emp
where Ename regexp (0-9);

-- Write a query to select first 3 records from a table.
 select * from emp
 limit 3;
 
 -- Write a query to get monthly salary (round 2 decimal places) of each and every employee
select Ename , Salary ,
round(Salary/12,2) as 'Monthly Salary'
from emp;
 

 