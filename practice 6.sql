create database class6;
use class6;
create table customer(
customer_Id int,
F_name varchar(10),
I_name varchar(10),
age int,
country char(10)
);
show tables;
create table orders(
order_Id int,
amount int,
customer_Id int
);
insert into customer values (1,'john','Doe',32,'USA'),
(2,'robert','Luna',22,'USA'),
(3,'David','Robinson',22,'UK'),
(4,'John','David',25,'UK'),
(5,'Betty','Doe',28,'UAE');
select * from customer;

insert into orders values (1,200,4),
(2,500,10),
(3,300,3),
(4,800,1),
(5,150,2);
select * from orders;

use classicmodels;
select * from orderdetails;
select * from customers;
select * from payments;
select * from employees;
select * from offices;
select * from productlines;
select * from orders;

select employeeNumber,lastName,firstName,officeCode
from employees
where officeCode in (select officeCode from offices where city in('Paris','Tokyo','Sydney'));

select *
from employees
where officeCode = (select officeCode from offices where country ='Australia');



select * from customers
where customerNumber in(select customerNumber from orders
where orderNumber in( select orderNumber from orderdetails 
where productcode in (select productcode from products where productLine = 'Classic Cars')));

select * from customers
where customerNumber in (select customerNumber from payments where amount >50000 );

select * from customers
where customerNumber in (select customerNumber from orders where status = 'Cancelled');

use class6;
select * from customer;
select * from orders;

select * from customer
where age >(select avg(age)from customer);


select * from customer where customer_id =
(select customer_Id from orders
where amount= (select max(amount)from orders));
use classicmodels;

select * from customers where customerNumber in
(select customerNumber from orders where orderNumber in (select orderNumber from orderdetails
where quantityOrdered> (select avg(quantityOrdered)from orderdetails)));






