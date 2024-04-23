use classicmodels;
show tables;
select * from customers;
select contactLastName,contactFirstName,creditLimit
from customers;

select * from employees;

select employeeNumber,officeCode,jobTitle
from employees;
select * from offices;

select officeCode,state,country,postalCode
from offices;

select * from orderdetails;
select orderNumber,productCode,priceEach
from orderdetails;
select * from orders;
select * from employees;

select distinct(jobTitle)
from employees;

select * from products;

select distinct(productLine)
from products;
select * from orderdetails;

select distinct(orderLineNumber)
from orderdetails;

select * from payments;

select distinct(customerNumber)
from payments;

select * from customers;

select contactLastName,contactFirstName,creditLimit
from customers
where creditLimit>200000;

select contactLastName,contactFirstName,creditLimit
from customers
where creditLimit=117300;

select * from customers;

select officeCode,lastName,firstName
from employees
where officeCode=3;

select city,customerName,creditLimit
from customers
where city= 'melbourne' and creditLimit>100000;

select city,customerName,creditLimit
from customers
where country != 'USA' and creditLimit>150000;

select city,customerName,creditLimit
from customers
where city = 'NYC' or creditLimit<50000;

select contactlastname,creditlimit
from customers
order by creditLimit;

select contactlastname,creditlimit
from customers
order by creditLimit desc;

select contactlastname,creditlimit,country
from customers
where country = 'USA'
order by creditLimit;

select contactFirstName,creditlimit,country
from customers
where country = 'USA'
order by contactFirstName ;

select contactFirstName,creditlimit,country
from customers
where country = 'USA' and creditLimit >100000
order by contactFirstName ;

select contactFirstName,creditlimit,country,state
from customers
where state is null;
-- is null use for find null value 











 